#include "MilitaryLandUnit.hpp"

//#include <godot_cpp/variant/string.hpp>

namespace OpenVic2
{
    //class Army
    class Infantry : public MilitaryLandUnit
    {
        //creates a new airplane with default values described in MIL req
        Infantry();

        //deletes this airplane from memory
        ~Infantry();

        //called on by Factory to create an new Airplane
        //should only call constructor
        MilitaryUnit* create() const;

        //behavior of identifying an enemy target in another army based of this
        //infantries position in his own army.
        //return a pointer to the targeted enemy, if none return nullptr
        //MilitaryUnit* identifyTarget(Army* thisArmy, Army* enemyArmy);


    };
}