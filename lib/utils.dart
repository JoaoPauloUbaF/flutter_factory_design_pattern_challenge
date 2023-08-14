import 'dart:math';

import 'package:flutter_factory_design_pattern_challenge/spaceship.dart';
import 'package:flutter_factory_design_pattern_challenge/spaceship_factory.dart';

class Utils {
  static SpaceShip generateRandomSpaceShip() {
    SpaceShip result = NullSpaceShip();
    Random rnd = Random();
    SpaceShipType spaceShipType = SpaceShipType.values[rnd.nextInt(4)];
    switch (spaceShipType) {
      case SpaceShipType.millenniumFalcon:
        {
          return SpaceShipFactory.createSpaceShip(
              SpaceShipType.millenniumFalcon);
        }
      case SpaceShipType.serenity:
        {
          return SpaceShipFactory.createSpaceShip(SpaceShipType.serenity);
        }

      case SpaceShipType.unscInfinity:
        {
          return SpaceShipFactory.createSpaceShip(SpaceShipType.unscInfinity);
        }

      case SpaceShipType.ussEnterprise:
        {
          return SpaceShipFactory.createSpaceShip(SpaceShipType.ussEnterprise);
        }
      default:
        {
          return result;
        }
    }
  }
}
