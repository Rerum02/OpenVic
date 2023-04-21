#pragma once
#include <string>
#include <godot_cpp/variant/string.hpp>

class Timespan;
class Good;

namespace OpenVic2
{
    class MilitaryUnit
    {
        public:

        virtual ~MilitaryUnit();

        // create method for the factory
        virtual Content* create() const = 0;


        protected:

        //unique name of this unit
        //question: does a unit's name have to be unique?
        godot::String unitName;

        //organization value of this unit
        //domain constraint {0.00 - 100.00}
        float organization;

        //strength value of this unit
        //domain constraint {0.00 - 100.00}
        float strength;

        //speed value of this unit
        //note this is not map speed but individual unit speed
        int speed;

        //days it takes to build this unit
        Timespan* buildTime;

        //attack value of this unit
        int attack;

        //buildCost value of this unit
        //an array of all goods required to build this unit
        //once goods are implemented will see how to implement amount of goods
        //Good buildCost*;

        //size of build Cost array
        //int sizeOfBuildCostArray;

        //supplyConsumption value of this land unit
        //an array of all goods required each in game day by this unit
        //once goods are implemented we will see how to implement amount of goods
        //Good resupplyCost*;

        //size of resupply Cost array
        //int sizeOfResupplyCostArray;
    };
}