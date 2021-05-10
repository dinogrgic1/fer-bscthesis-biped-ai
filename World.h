#include <stdio.h>
#include <stdlib.h>
#include <ode/ode.h>
#include <drawstuff/drawstuff.h>
#include "texturepath.h"

#define __DEAFULT_GRAVITY 9.81

class World
{
public:
    dWorldID world;
    dSpaceID space;
    dJointGroupID contactgroup;
    dGeomID ground;

    dsFunctions fn;

    World() {}
    ~World() {}
};