<?php

namespace spec\Symm\App;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class CalculatorSpec extends ObjectBehavior
{
    function it_is_initializable()
    {
        $this->shouldHaveType('Symm\App\Calculator');
    }

    function it_adds_two_integers()
    {
        $this->add(1,2)->shouldReturn(3);
    }
}
