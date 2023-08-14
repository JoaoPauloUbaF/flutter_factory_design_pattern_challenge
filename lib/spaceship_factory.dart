import 'spaceship.dart';

class SpaceShipFactory {
  SpaceShipFactory._();

  static SpaceShip createSpaceShip(SpaceShipType type) {
    switch (type) {
      case SpaceShipType.millenniumFalcon:
        return MillenniumFalcon(4, 10);
      case SpaceShipType.unscInfinity:
        return UNSCInfinity(3, 15);
      case SpaceShipType.ussEnterprise:
        return USSEnterprise(2, 20);
      case SpaceShipType.serenity:
        return Serenity(1, 25);
      default:
        return NullSpaceShip();
    }
  }
}

enum SpaceShipType { millenniumFalcon, unscInfinity, ussEnterprise, serenity }
