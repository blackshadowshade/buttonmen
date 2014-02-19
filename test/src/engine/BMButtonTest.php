<?php

/**
 * Generated by PHPUnit_SkeletonGenerator 1.2.0 on 2012-12-07 at 14:08:15.
 */
class BMButtonTest extends PHPUnit_Framework_TestCase {

    /**
     * @var BMButton
     */
    protected $object;

    /**
     * Sets up the fixture, for example, opens a network connection.
     * This method is called before a test is executed.
     */
    protected function setUp() {
        $this->object = new BMButton;
    }

    /**
     * Tears down the fixture, for example, closes a network connection.
     * This method is called after a test is executed.
     */
    protected function tearDown() {

    }

    /**
     * @covers BMButton::load
     * @covers BMButton::__get
     * @covers BMButton::__set
     */
    public function test_load() {
        // empty button recipe
        $name = '';
        $recipe = '';
        $this->object->load($recipe);
        $this->assertEquals($name, $this->object->name);
        $this->assertEquals($recipe, $this->object->recipe);
        $this->assertTrue(is_array($this->object->dieArray));

        // button recipes using dice with no special skills
        $name = 'test';
        $recipe = '(4) (8) (20) (20)';
        $this->object->load($recipe, $name);
        $this->assertEquals($name, $this->object->name);
        $this->assertEquals($recipe, $this->object->recipe);
        $this->assertEquals(4, count($this->object->dieArray));
        $dieSides = array(4, 8, 20, 20);
        for ($dieIdx = 0; $dieIdx <= (count($dieSides) - 1); $dieIdx++) {
          $this->assertTrue($this->object->dieArray[$dieIdx] instanceof BMDie);
          $this->assertTrue($dieSides[$dieIdx] ===
                            $this->object->dieArray[$dieIdx]->max);
        }

        $recipe = '(6) (10) (12)';
        $this->object->recipe = $recipe;
        $this->assertEquals(3, count($this->object->dieArray));
        $this->assertEquals($recipe, $this->object->recipe);
        $dieSides = array(6, 10, 12);
        for ($dieIdx = 0; $dieIdx <= (count($dieSides) - 1); $dieIdx++) {
          $this->assertTrue($this->object->dieArray[$dieIdx] instanceof BMDie);
          $this->assertEquals($dieSides[$dieIdx],
                              $this->object->dieArray[$dieIdx]->max);
        }

        // button recipe with dice with skills
        $name = 'test2';
        $recipe = 'p(4) s(10) ps(30) (8)';
        $this->object->load($recipe, $name);
        $this->assertEquals($name, $this->object->name);
        $this->assertEquals(4, count($this->object->dieArray));
        $this->assertEquals($recipe, $this->object->recipe);
        $dieSides = array(4, 10, 30, 8);
        $dieSkills = array('p', 's', 'ps', '');
        for ($dieIdx = 0; $dieIdx <= (count($dieSides) - 1); $dieIdx++) {
          $this->assertTrue($this->object->dieArray[$dieIdx] instanceof BMDie);
          $this->assertEquals($dieSides[$dieIdx],
                              $this->object->dieArray[$dieIdx]->max);
//          $this->assertEquals($dieSkills[$dieIdx],
//                              $this->object->dieArray[$dieIdx]->mSkills);
        }

        // invalid button recipe with no die sides for one die
        try {
            $this->object->load($name, 'p(4) s(10) ps (8)');
            $this->fail('The number of sides must be specified for each die.');
        }
        catch (InvalidArgumentException $expected) {
        }

        // auxiliary dice
        $recipe = '(4) (10) (30) +(20)';
        $this->object->load($recipe);
        $this->assertEquals(4, count($this->object->dieArray));
        $this->assertEquals($recipe, $this->object->recipe);
        $dieSides = array(4, 10, 30, 20);
        $dieSkills = array('', '', '', '+');
        for ($dieIdx = 0; $dieIdx <= (count($dieSides) - 1); $dieIdx++) {
          $this->assertTrue($this->object->dieArray[$dieIdx] instanceof BMDie);
          $this->assertEquals($dieSides[$dieIdx],
                              $this->object->dieArray[$dieIdx]->max);
        }

        // twin dice, option dice

    }

    /**
     * @covers BMButton::reload
     */
    public function test_reload() {
        // button recipes using dice with no special skills
        $name = 'test';
        $recipe = '(4) (8) (20) (20)';
        $this->object->load($recipe, $name);
        $this->assertEquals($name, $this->object->name);
        $this->assertEquals(4, count($this->object->dieArray));
        // empty the array manually
        $this->object->dieArray = array();
        // force reload
        $this->object->reload();
        $this->assertEquals($name, $this->object->name);
        $this->assertEquals(4, count($this->object->dieArray));

        $dieSides = array(4, 8, 20, 20);
        for ($dieIdx = 0; $dieIdx <= (count($dieSides) - 1); $dieIdx++) {
          $this->assertTrue($this->object->dieArray[$dieIdx] instanceof BMDie);
          $this->assertEquals($dieSides[$dieIdx],
                              $this->object->dieArray[$dieIdx]->max);
        }

    }

    /**
     * @covers BMButton::load_values
     */
    public function test_load_values() {
        $this->object->load('(4) (8) (12) (20)');
        $dieValues = array(1, 2, 4, 9);
        $this->object->load_values($dieValues);
        for ($dieIdx = 0; $dieIdx < count($dieValues); $dieIdx++) {
            $this->assertEquals($dieValues[$dieIdx],
                                $this->object->dieArray[$dieIdx]->value);
        }

        // test for same number of values as dice
        $this->object->load('(4) (8) (12) (20)');
        try {
            $this->object->load_values(array(1, 2, 3));
            $this->fail('The number of values must match the number of dice.');
        }
        catch (InvalidArgumentException $expected) {
        }

        // test that value is within limits
        $this->object->load('(4) (8) (12) (20)');
        try {
            $this->object->load_values(array(5, 12, 20, 30));
            $this->fail('Invalid values.');
        }
        catch (InvalidArgumentException $expected) {
        }

        // test that a value cannot be set when the sides are not yet determined
        $this->object->load('(4) (8) (12) (X)');
        try {
            $this->object->load_values(array(1, 1, 1, 1));
            $this->fail('Cannot set value when sides are not yet determined.');
        }
        catch (InvalidArgumentException $expected) {
        }
    }

    /**
     * @covers BMButton::add_die
     */
    public function test_add_die() {
        $die1 = new BMDie;
        $die2 = new BMDie;
        $this->object->add_die($die1);
        $this->assertEquals(1, count($this->object->dieArray));
        $this->assertTrue($die1===$this->object->dieArray[0]);
        $this->object->add_die($die2);
        $this->assertEquals(2, count($this->object->dieArray));
        $this->assertTrue($die2===$this->object->dieArray[1]);
    }

    /**
     * @covers BMButton::validate_recipe
     */
    public function test_validate_recipe() {
        $method = new ReflectionMethod('BMButton', 'validate_recipe');
        $method->setAccessible(TRUE);

        // empty button recipe
        $method->invoke(new BMButton, '');

        // single die recipe
        $method->invoke(new BMButton, '(99)');

        // valid button recipe
        $method->invoke(new BMButton, 'p(4) s(10) ps(30) (8)');

        // invalid button recipe with no die sides for one die
        try {
            $method->invoke(new BMButton, 'p(4) s(10) ps (8)');
            $this->fail('The number of sides must be specified for each die.');
        }
        catch (InvalidArgumentException $expected) {
        }

        // twin dice, option dice

        // swing dice
    }

    /**
     * @covers BMButton::activate
     */
    public function test_activate() {
        $game = new BMGame;
        $game->activeDieArrayArray = array(array(), array());
        $die1 = BMDie::create(15);
        $die2 = BMDie::create(3);
        $this->object->dieArray = array($die1, $die2);
        $this->object->ownerObject = $game;
        $this->object->playerIdx = 1;
        $this->object->activate();
        $this->assertEquals(2, count($game->activeDieArrayArray[1]));
        $this->assertEquals($die1, $game->activeDieArrayArray[1][0]); // clone
        $this->assertEquals($die2, $game->activeDieArrayArray[1][1]); // clone
    }

    /**
     * @covers BMButton::update_button_recipe
     */
    public function test_update_button_recipe() {
        $game = new BMGame;

        $button1 = new BMButton;
        $button1->load('(4) (8)');

        $button2 = new BMButton;
        $button2->load('(12) (20)');

        $game->buttonArray = array($button1, $button2);

        $die1 = BMDie::create_from_recipe('p(5)');
        $die2 = BMDie::create_from_recipe('DB(7)');

        $game->activeDieArrayArray = array(array($die1, $die2), array());

        $game->buttonArray[0]->update_button_recipe();
        $this->assertTrue($game->buttonArray[0]->hasAlteredRecipe);
        $this->assertEquals('p(5) DB(7)', $game->buttonArray[0]->recipe);

        // check that
        $button3 = new BMButton;
        $button3->load('(30) (99)');
        $button3->ownerObject = $game;

        $button3->update_button_recipe();
        $this->assertFalse($button3->hasAlteredRecipe);
        $this->assertEquals('(30) (99)', $button3->recipe);
    }

    /**
     * @covers BMButton::__get
     */
    public function test__get() {
        $this->assertEquals(NULL, $this->object->fubar);
    }

    /**
     * @covers BMButton::__set
     */
    public function test__set() {
        // test set of of ownerObject and playerIdx properties
        $game1 = new BMGame;
        $this->object->ownerObject = $game1;
        $this->object->playerIdx = 1;
        $this->object->dieArray = array(new BMDie, new BMDie);
        $this->assertTrue($game1===$this->object->dieArray[0]->ownerObject);
        $this->assertTrue($game1===$this->object->dieArray[1]->ownerObject);
        $this->assertEquals(1, $this->object->dieArray[0]->playerIdx);
        $this->assertEquals(1, $this->object->dieArray[1]->playerIdx);

        // test change of ownerObject and playerIdx properties
        $game2 = new BMGame;
        $this->object->ownerObject = $game2;
        $this->object->playerIdx = 0;
        $this->assertTrue($game2===$this->object->dieArray[0]->ownerObject);
        $this->assertTrue($game2===$this->object->dieArray[1]->ownerObject);
        $this->assertEquals(0, $this->object->dieArray[0]->playerIdx);
        $this->assertEquals(0, $this->object->dieArray[1]->playerIdx);

        // test set of unknown property
        $testString = 'testString xxx';
        $this->object->fubar = $testString;
        $this->assertEquals($testString, $this->object->fubar);
    }

    /**
     * @covers BMButton::__isset
     */
    public function test__isset() {
        $this->assertFalse(isset($this->object->name));

        $this->object->name = 'TestName';
        $this->assertTrue(isset($this->object->name));
    }

    /**
     * @covers BMButton::__unset
     */
    public function test__unset() {
        // check that a nonexistent property can be unset gracefully
        unset($this->object->rubbishVariable);

        $this->object->name = 'TestName';
        unset($this->object->name);
        $this->assertFalse(isset($this->object->name));
    }
}

?>