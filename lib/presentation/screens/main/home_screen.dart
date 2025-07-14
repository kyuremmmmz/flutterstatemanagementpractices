import 'package:figmatoflutter/domain/entity/card_list_entity.dart';
import 'package:figmatoflutter/domain/entity/offers_container_entity.dart';
import 'package:figmatoflutter/presentation/widgets/badges/avatar_badge.dart';
import 'package:figmatoflutter/presentation/widgets/cards/card_list.dart';
import 'package:figmatoflutter/presentation/widgets/containers/balance_container.dart';
import 'package:figmatoflutter/presentation/widgets/containers/offers_container.dart';
import 'package:figmatoflutter/presentation/widgets/grid_views/grid_view.dart';
import 'package:figmatoflutter/presentation/widgets/headers/header_1.dart';
import 'package:figmatoflutter/presentation/widgets/map/map.dart';
import 'package:figmatoflutter/presentation/widgets/row/row_view.dart';
import 'package:figmatoflutter/presentation/widgets/texts/text_header.dart';
import 'package:figmatoflutter/utils/app_padding.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardListEntity> list = [
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

  final List<OffersContainerEntity> listOfContainers = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 12,
        centerTitle: true,
        title:const Row(
          children: [
            AvatarBadge(),
            SizedBox(width: 12),
            TextHeader(text: 'Welcome Back', name: 'Christian'),
            SizedBox(width: 20),
            BalanceContainer(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: AppPadding.appPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) => CardList(
                      bgColor: list[index].bgColor,
                      headingText: list[index].headingText,
                      subtext: list[index].subtext,
                      headingColorText: list[index].headingColorText,
                      subColorText: list[index].subColorText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 240,
                  child: FeatureGrid(),
                ),
                OffersSection(
                  header: 'Offers ⚡',
                  onViewAllClick: (){},
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfContainers.length,
                    itemBuilder: (context, index){
                      return OffersContainer(
                        image: listOfContainers[index].image,
                        price: listOfContainers[index].price,
                        text: listOfContainers[index].text,
                        subtext: listOfContainers[index].subtext,
                      );
                    }),
                ),
                const SizedBox(
                  height: 300,
                  child: Mapa(),
                ),
                OffersSection(
                  header: 'Games 🎮 ',
                  onViewAllClick: (){},
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfContainers.length,
                    itemBuilder: (context, index){
                      return OffersContainer(
                        image: listOfContainers[index].image,
                        price: listOfContainers[index].price,
                        text: listOfContainers[index].text,
                        subtext: listOfContainers[index].subtext,
                      );
                    }),
                ),
                OffersSection(
                  header: 'Popular Merchants',
                  onViewAllClick: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}