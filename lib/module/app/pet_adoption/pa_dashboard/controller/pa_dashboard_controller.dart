import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/pa_dashboard_view.dart';

class PaDashboardController extends GetxController {
  PaDashboardView? view;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

String details = 'My job requires moving to another country. '
    'I do not have the opportunity to take the cat with me. '
    'I am looking for good people who will shelter my pet';

List<Map> categories = [
  {"name": 'Cats', "imagePath": 'https://i.ibb.co/5sr3yWm/cat.png'},
  {"name": 'Dogs', "imagePath": 'https://i.ibb.co/s6vZBsx/dog.png'},
  {"name": 'Horses', "imagePath": 'https://i.ibb.co/YcS99B7/horse.png'},
  {"name": 'Parrots', "imagePath": 'https://i.ibb.co/RCrfsVq/parrot.png'},
  {"name": 'Rabbits', "imagePath": 'https://i.ibb.co/7G1qJF5/rabbit.png'},
  {"name": 'Cats', "imagePath": 'https://i.ibb.co/5sr3yWm/cat.png'},
  {"name": 'Dogs', "imagePath": 'https://i.ibb.co/s6vZBsx/dog.png'},
  {"name": 'Horses', "imagePath": 'https://i.ibb.co/YcS99B7/horse.png'},
  {"name": 'Parrots', "imagePath": 'https://i.ibb.co/RCrfsVq/parrot.png'},
  {"name": 'Rabbits', "imagePath": 'https://i.ibb.co/7G1qJF5/rabbit.png'},
];

List<Map> catMapList = [
  {
    "id": 0,
    "name": 'Sola',
    "imagePath": 'https://i.ibb.co/6476Gsz/pet-cat2.png',
    "Species": 'Abyssinion cat',
    "sex": 'Female',
    "year": '2',
    "distance": '3.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 1,
    "name": 'Orion',
    "imagePath": 'https://i.ibb.co/hshHCTD/pet-cat1.png',
    "Species": 'Abyssinion cat',
    "sex": 'male',
    "year": '1.5',
    "distance": '7.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 2,
    "name": 'Sola',
    "imagePath": 'https://i.ibb.co/6476Gsz/pet-cat2.png',
    "Species": 'Abyssinion cat',
    "sex": 'Female',
    "year": '2',
    "distance": '3.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 3,
    "name": 'Orion',
    "imagePath": 'https://i.ibb.co/hshHCTD/pet-cat1.png',
    "Species": 'Abyssinion cat',
    "sex": 'male',
    "year": '1.5',
    "distance": '7.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 4,
    "name": 'Sola',
    "imagePath": 'https://i.ibb.co/6476Gsz/pet-cat2.png',
    "Species": 'Abyssinion cat',
    "sex": 'Female',
    "year": '2',
    "distance": '3.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 5,
    "name": 'Orion',
    "imagePath": 'https://i.ibb.co/hshHCTD/pet-cat1.png',
    "Species": 'Abyssinion cat',
    "sex": 'male',
    "year": '1.5',
    "distance": '7.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
];

List<Map> navList = [
  {'icon': Icons.pets_rounded, 'title': 'Adoption'},
  {'icon': Icons.markunread_mailbox_rounded, 'title': 'Donation'},
  {'icon': Icons.add_rounded, 'title': 'Add Pet'},
  {'icon': Icons.favorite_rounded, 'title': 'Favorites'},
  {'icon': Icons.mail_rounded, 'title': 'Messages'},
  {'icon': Icons.person, 'title': 'Profile'},
];
