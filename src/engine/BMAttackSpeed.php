<?php

class BMAttackSpeed extends BMAttack {
    public $name = 'Speed';
    public $type = 'Speed';

    public function validate_attack($game, array $attackers, array $defenders) {
        if (1 != count($attackers) || count($defenders) < 1) {
            return FALSE;
        }

        $attacker = $attackers[0];
        $doesAttackerHaveSpeed = array_key_exists('Speed', $attacker->skillList);

        $defenderSum = 0;
        foreach ($defenders as $defender) {
            $defenderSum += $defender->value;
        }
        $areValuesEqual = $attacker->value == $defenderSum;

        $canAttackerPerformThisAttack =
            $attacker->is_valid_attacker($this->type, $attackers, $defenders);
        $areDefendersValidTargetsForThisAttack = TRUE;
        foreach ($defenders as $defender) {
            if (!($defender->is_valid_target($this->type, $attackers, $defenders))) {
                $areDefendersValidTargetsForThisAttack = FALSE;
                break;
                }
        }

        return ($doesAttackerHaveSpeed &&
                $areValuesEqual &&
                $canAttackerPerformThisAttack &&
                $areDefendersValidTargetsForThisAttack);
    }

    public function find_attack($game) {
        return $this->search_onevmany($game,
                                      $game->attackerAllDieArray,
                                      $game->defenderAllDieArray);
    }
}

?>