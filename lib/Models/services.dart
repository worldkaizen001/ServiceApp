import 'package:flutter/material.dart';

class Service {

  String? imgUrl;
  String? text;
  String? description;
  double? price;
  double? ratings;



  Service({this.imgUrl, this.text, this.price, this.description,this.ratings, });
}

List<Service> doctorService =[
  Service(

    imgUrl: 'images/dog.jpg',
    text: 'Dog Walking',
    description: 'emovojorna',
    price: 10,
    ratings: 4,

  ),
  Service(
    imgUrl: 'images/ply.jpg',
    text: 'Electrical',
    description: 'onanekwe',
    price: 12,
    ratings: 5,
  ),
  Service(
    imgUrl: 'images/truck.jpg',
    text: 'Delivery',
    description: 'emovojorna',
    price: 10,
    ratings: 4,
  ),
  Service(

    imgUrl: 'images/lady1.jpg',
    text: 'Cleaning',
    description: 'emovojorna',
    price: 10,
    ratings: 4,
  ),
  Service(
    imgUrl: 'images/man.jpg',
    text: 'Scrub',
    description: 'emovojorna',
    price: 10,
    ratings: 4,
  ),
  Service(
    imgUrl: 'images/nurse.jpg',
    text: 'Nurse',
    description: 'emovojorna',
    price: 10,
    ratings: 4,
  ),
  Service(
    imgUrl: 'images/saw1.jpg',
    text: 'Wood Works',
    description: 'emovojorna',
    price: 10,
    ratings: 4,
  ),
  Service(
    imgUrl: 'images/tailor.jpg',
    text: 'Tailoring',
    description: 'emovojorna',
    price: 10,
    ratings: 4,
  ),
  Service(
    imgUrl: 'images/clip.jpg',
    text: 'Barber',
    description: 'emovojorna',
    price: 10,
    ratings: 4,
  ),
];