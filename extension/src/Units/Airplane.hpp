#include "MilitaryLandUnit.hpp"
//#include <godot_cpp/variant/string.hpp>

namespace OpenVic2
{
    class Airplane : public MilitaryLandUnit
    {
        //creates a new airplane with default values described in MIL req
        Airplane();

        //deletes this airplane from memory
        ~Airplane();

        //called on by Factory to create an Airplane
        MilitaryUnit* create() const;
    };
}