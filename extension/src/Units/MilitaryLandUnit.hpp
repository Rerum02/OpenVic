#pragma once
#include "MilitaryUnit.hpp"

namespace OpenVic2
{    
    class MilitaryLandUnit : public MilitaryUnit
    {
        //defence value of this unit
        int defence;

        //manoeuvre value of this land unit
        int manoeuvre;

        //reconnaissance value of this land unit
        float reconnaissance;

        //support value of this land unit
        float support;
    };
}