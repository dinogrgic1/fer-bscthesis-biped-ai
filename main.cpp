#include <ode/ode.h>
#include <drawstuff/drawstuff.h>
#include "texturepath.h"

#ifdef _MSC_VER
#pragma warning(disable : 4244 4305)
#endif

#define TEXTURE_FOLDER "textures"

dWorldID world;
dBodyID apple;
dReal r = 0.2, m = 1.0;
dsFunctions fn;

void simLoop(int pause)
{
  dWorldStep(world, 0.01);

  dsSetColor(1.0, 0.0, 0.0);
  const dReal *pos = dBodyGetPosition(apple);
  const dReal *R = dBodyGetRotation(apple);
  dsDrawSphereD(pos, R, r);
}

void start()
{
  static float xyz[3] = {3.0, 0.0, 1.0};
  static float hpr[3] = {-180, 0, 0};
  dsSetViewpoint(xyz, hpr);
}

void setDrawStuff()
{
  fn.version = DS_VERSION;
  fn.start = &start;
  fn.step = &simLoop;
  fn.path_to_textures = TEXTURE_FOLDER;
}

int main(int argc, char **argv)
{
  dInitODE();
  setDrawStuff();
  world = dWorldCreate();
  dWorldSetGravity(world, 0, 0, -9.81);

  apple = dBodyCreate(world);
  dMass mass;
  dMassSetZero(&mass);
  dMassSetSphereTotal(&mass, m, r);
  dBodySetMass(apple, &mass);
  dBodySetPosition(apple, 0.0, 0.0, 3.0);

  dsSimulationLoop(argc, argv, 320, 240, &fn);
  dWorldDestroy(world);
  dCloseODE();

  return 0;
}
