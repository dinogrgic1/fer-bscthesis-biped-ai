#include <webots/Robot.hpp>
#include <iostream>

int main() 
{
  webots::Robot *robot = new webots::Robot();
  while (robot->step(32) != -1)
    std::cout << "Ah, ha, ha, ha, stayin' alive" << std::endl;
  delete robot;
  return 0;
}