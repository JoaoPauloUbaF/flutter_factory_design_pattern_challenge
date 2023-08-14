import 'dart:math';

import 'package:flutter/material.dart';

abstract class SpaceShip {
  Point position = const Point(0, 0);
  int size = 0;
  String displayName = "Spaceship";
  int speed = 0;

  String getDisplay();

  int getSpeed();

  String move();

  void getPosition() {}
}

class MillenniumFalcon extends SpaceShip {
  MillenniumFalcon(int size, int speed) {
    debugPrint("MillenniumFalcon created");
    this.size = size;
    this.speed = speed;
  }

  @override
  String getDisplay() {
    return "Millennium Falcon";
  }

  @override
  int getSpeed() {
    return speed;
  }

  @override
  String move() {
    position = Point(position.x + speed, position.y + speed);
    return "Millennium Falcon moved to $position";
  }
}

class UNSCInfinity extends SpaceShip {
  UNSCInfinity(int size, int speed) {
    debugPrint("UNSCInfinity created");
    this.size = size;
    this.speed = speed;
  }

  @override
  String getDisplay() {
    return "UNSC Infinity";
  }

  @override
  int getSpeed() {
    return speed;
  }

  @override
  String move() {
    position = Point(position.x + speed, position.y);
    return ("UNSC Infinity moved to $position");
  }
}

class USSEnterprise extends SpaceShip {
  USSEnterprise(int size, int speed) {
    displayName = "USS Enterprise";
    debugPrint("USS Enterprise created");
    this.size = size;
    this.speed = speed;
  }

  @override
  String getDisplay() {
    return "USS Enterprise";
  }

  @override
  int getSpeed() {
    return speed;
  }

  @override
  String move() {
    position = Point(position.x, position.y + speed);
    return ("USS Enterprise moved to $position");
  }
}

class Serenity extends SpaceShip {
  Serenity(int size, int speed) {
    debugPrint("Serenity created");
    displayName = "Serenity";
    this.size = size;
    this.speed = speed;
  }

  @override
  String getDisplay() {
    return "Serenity";
  }

  @override
  int getSpeed() {
    return speed;
  }

  @override
  String move() {
    position = Point(position.x + speed, position.y - speed);
    return ("Serenity moved to $position");
  }
}

class NullSpaceShip extends SpaceShip {
  NullSpaceShip() {
    displayName = "Null SpaceShip";
    size = 0;
    speed = 0;
  }

  @override
  String getDisplay() {
    return "";
  }

  @override
  int getSpeed() {
    return 0;
  }

  @override
  String move() {
    position = const Point(0, 0);
    return "";
  }
}
