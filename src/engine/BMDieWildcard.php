<?php
/**
 * BMDieWildcard: Code specific to wildcard dice
 *
 * @author james
 */

/**
 * This class contains all the logic to do with instantiating wildcard dice
 */
class BMDieWildcard extends BMDie {

    /**
     * Full identifier of card:
     *    0 is unspecified
     *
     *    1-13 are clubs     (1-10, J, Q, K)
     *   14-26 are diamonds  (1-10, J, Q, K)
     *   27-39 are hearts    (1-10, J, Q, K)
     *   40-52 are spades    (1-10, J, Q, K)
     *   53-54 are jokers
     *
     * @var int
     */
    public $currentCardId;

    /**
     * Array of card identifiers that have already been drawn
     *
     * @var array
     */
    protected $usedCardIdArray;

    public function displayed_value($isHtml = FALSE) {
        if (($this->currentCardId <= 0) || ($this->currentCardId > 54)) {
            return '';
        } elseif (53 === $this->currentCardId) {
            $textStr = 'Jkr (red)';
            $htmlStr = '<span class="suit_red">Jkr</span>';
        } elseif (54 === $this->currentCardId) {
            $textStr = 'Jkr (black)';
            $htmlStr = '<span class="suit_black">Jkr</span>';
        } else {
            if ($this->currentCardId >= 40) {
                $suit = 'S';
                $htmlSuit = '<span class="suit_black">&spades;</span>';
            } elseif ($this->currentCardId >= 27) {
                $suit = 'H';
                $htmlSuit = '<span class="suit_red">&hearts;</span>';
            } elseif ($this->currentCardId >= 14) {
                $suit = 'D';
                $htmlSuit = '<span class="suit_red">&diams;</span>';
            } else {
                $suit = 'C';
                $htmlSuit = '<span class="suit_black">&clubs;</span>';
            }

            if (1 === $this->currentCardId % 13) {
                $value = 'A';
            } elseif (11 === $this->currentCardId % 13) {
                $value = 'J';
            } elseif (12 === $this->currentCardId % 13) {
                $value = 'Q';
            } elseif (0 === $this->currentCardId % 13) {
                $value = 'K';
            } else {
                $value = $this->currentCardId % 13;
            }

            $htmlStr = $value . $htmlSuit;
            $textStr = $value . $suit;
        }

        if ($isHtml) {
            return $htmlStr;
        } else {
            return $textStr;
        }
    }

    /**
     * Set number of sides of the die, and add die skills
     *
     * @param int $sides
     * @param array $skills
     */
    public function init($sides, array $skills = NULL) {
        $this->currentCardId = 0;
        $this->min = 1;
        $this->max = 20;

        $this->add_multiple_skills($skills);
    }

    /**
     * Create a BMDieWildcard, then add skills to the die.
     *
     * @param array $skills
     * @return BMDieWildcard
     */
    public static function create($size, array $skills = NULL) {
        $die = new BMDieWildcard;

        $die->init($size, $skills);

        return $die;
    }

    /**
     * Select a new value
     */
    protected function select_new_value() {
        if (!($this->ownerObject instanceof BMGame)) {
            return;
        }

        $game = $this->ownerObject;
        $playerArray = $game->playerArray;
        $player = $game->playerArray[$this->playerIdx];

        if (count($player->cardsDrawn) >= 54) {
            $player->cardsDrawn = array();
        }

        $cardsDrawn = $player->cardsDrawn;

        while (TRUE) {
            $newCardId = bm_rand(1, 54);
            $cardsDrawn[$newCardId] = TRUE;

            if (($this->max < 20) &&
                ($this->get_value_from_id($newCardId) > $this->max)) {
                continue;
            }

            if (!array_key_exists($newCardId, $player->cardsDrawn)) {
                break;
            }
        }

        $this->currentCardId = $newCardId;
        $this->set_value_from_id();

        $playerArray[$this->playerIdx]->cardsDrawn = $cardsDrawn;
        $game->playerArray = $playerArray;
    }

    /**
     * Return all possible values the die may use in this type of attack.
     * The values must be sorted, highest to lowest, with no duplication.
     *
     * @param string $type
     * @return array
     */
    public function attack_values($type) {
        if ((1 === $this->value) && ('Power' === $type)) {
            $list = array(14);
        } else {
            $list = array($this->value);
        }

        $this->run_hooks(__FUNCTION__, array('attackType' => $type,
                                             'attackValues' => &$list,
                                             'minValue' => $this->min,
                                             'value' => $this->value));
        return $list;
    }

    /**
     * Set the value based on the card identifier
     */
    public function set_value_from_id() {
        $value = $this->get_value_from_id($this->currentCardId);

        if (is_int($value)) {
            $this->set__value($value);
        }
    }

    /**
     * Calculate the value from the card identifier
     *
     * @param type $cardId
     * @return int
     */
    protected function get_value_from_id($cardId) {
        if ($cardId <= 0) {
            return;
        } elseif ($cardId >= 55) {
            throw new LogicException('Wildcard cannot have a card ID above 54');
        } elseif (!is_int($cardId)) {
            throw new LogicException('Wildcard must have an integer card ID');
        } elseif ($cardId >= 53) {
            return 20;
        } else {
            return (($cardId - 1) % 13) + 1;
        }
    }

    /**
     * Get the base score value of the die before applying any adjustments
     *
     * @return int
     */
    protected function get_raw_score_value() {
        return 16;
    }

    /**
     * Description of die size
     *
     * @return string
     */
    protected function die_size_string() {
        return "Wildcard die";
    }

    /**
     * Split a Wildcard die in half
     *
     * @return array
     */
    public function split() {
        return array($this);
    }

    /**
     * shrink() is intended to be used for weak dice
     */
    public function shrink() {
        // Wildcard dice do not shrink
    }

    /**
     * grow() is intended to be used for mighty dice
     */
    public function grow() {
        // Wildcard dice do not grow
    }

    /**
     * Get all die types.
     *
     * @return array
     */
    public function getDieTypes() {
        $typesList = array();
        $typesList['Wildcard'] = array(
            'code' => 'C',
            'description' => self::getDescription(),
        );
        return $typesList;
    }

    /**
     * Get description of wildcard dice
     *
     * @return string
     */
    public static function getDescription() {
        return  'A Wildcard die is not rolled. Instead, a card ' .
                'is drawn from a deck of playing cards with two jokers. ' .
                'The value of the Wildcard die is the value of the card, ' .
                'where Jack, Queen, King, and Joker have a value of 11, ' .
                '12, 13, and 20, respectively. ' .
                'A Wildcard die showing an Ace has a value of 1 except ' .
                'when the Wildcard die is performing a Power attack, ' .
                'when it can attack as if it had a value of 14. A ' .
                'Wildcard die is scored as if it were a 16-sided die. ' .
                'All active Wildcard dice owned by a player share the ' .
                'same deck. Cards are drawn without replacement, ' .
                'and the deck is only shuffled during a game if it ' .
                'is exhausted. Wildcard dice do not split, shrink, or grow.';
    }
}
