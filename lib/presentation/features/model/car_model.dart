

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCar{

 static final  modelCarData = [
    Car('assets/images/image 6.png', 'Standard', 21,const Color(0xff057A55),Colors.white),
    Car('assets/images/car.png', 'Prestige', 24,Colors.white,Colors.black),
    Car('assets/images/image 8.png', 'SUV', 54,Colors.white,Colors.black),
    Car('assets/images/car.png', 'Civic', 25,Colors.white,Colors.black),
  ];

}



class Car {
  String image;
  String name;
  int number;
  Color color;
  Color colorText;

  Car(this.image, this.name, this.number,this.color,this.colorText);
}

