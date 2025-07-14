import 'dart:ui';

import 'package:figmatoflutter/domain/entity/card_list_entity.dart';
import 'package:figmatoflutter/domain/entity/merchants_badge_entity.dart';
import 'package:figmatoflutter/domain/entity/offers_container_entity.dart';
import 'package:figmatoflutter/utils/app_images.dart';
import 'package:flutter/material.dart';

class MockData {
  static final List<MerchantsBadgeEntity> listOfBadges = [
    MerchantsBadgeEntity(
    image: AppImages.mcdo, 
    text: 'McDonals'),
    MerchantsBadgeEntity(
    image: AppImages.dominos, 
    text: 'Dominos'),
    MerchantsBadgeEntity(
    image: AppImages.lego, 
    text: 'Lego'),
    MerchantsBadgeEntity(
    image: AppImages.nike, 
    text: 'Nike'),
    MerchantsBadgeEntity(
    image: AppImages.uniqlo, 
    text: 'Uniqlo'),
  ];
  static final List<CardListEntity> list = [
    CardListEntity(
        bgColor: Colors.black87,
        headingText: 'GET 30% OFF',
        subtext: 'Get special discount \nfor dine in only',
        headingColorText: const Color.fromRGBO(233, 122, 98, 1),
        subColorText: Color.fromRGBO(255, 255, 255, 1)),
    CardListEntity(
        bgColor: const Color.fromARGB(221, 83, 83, 83),
        headingText: 'GET 30% OFF',
        subtext: 'Get special discount \nfor dine in only',
        headingColorText: Color.fromRGBO(233, 122, 98, 1),
        subColorText: Color.fromRGBO(255, 255, 255, 1)),
    CardListEntity(
        bgColor: const Color.fromARGB(221, 131, 88, 88),
        headingText: 'GET 30% OFF',
        subtext: 'Get special discount \nfor dine in only',
        headingColorText: Color.fromRGBO(233, 122, 98, 1),
        subColorText: Color.fromRGBO(255, 255, 255, 1)),
    CardListEntity(
        bgColor: const Color.fromARGB(221, 70, 63, 63),
        headingText: 'GET 30% OFF',
        subtext: 'Get special discount \nfor dine in only',
        headingColorText: Color.fromRGBO(233, 122, 98, 1),
        subColorText: Color.fromRGBO(255, 255, 255, 1)),
  ];

  static final List<OffersContainerEntity> listOfContainers = [
    OffersContainerEntity(
    'assets/images/ml.png', 
    'Mobile Legends', 
    'Play the 5v5 MOBA tapos the rest wala na.', 
    16314.33),
    OffersContainerEntity(
    'assets/images/pubg.png', 
    'PUBG Mobile', 
    'Play PUBG MOBILE is the rest wala na.', 
    16314.33),
    OffersContainerEntity(
    'assets/images/pubg.png', 
    'PUBG Mobile', 
    'Play PUBG MOBILE is the rest wala na.', 
    16314.33)
  ];
}