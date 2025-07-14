import 'package:figmatoflutter/domain/entity/card_list_entity.dart';
import 'package:figmatoflutter/domain/entity/merchants_badge_entity.dart';
import 'package:figmatoflutter/domain/entity/offers_container_entity.dart';
import 'package:figmatoflutter/presentation/widgets/badges/avatar_badge.dart';
import 'package:figmatoflutter/presentation/widgets/badges/merchants_badges.dart';
import 'package:figmatoflutter/presentation/widgets/cards/card_list.dart';
import 'package:figmatoflutter/presentation/widgets/containers/balance_container.dart';
import 'package:figmatoflutter/presentation/widgets/containers/offers_container.dart';
import 'package:figmatoflutter/presentation/widgets/grid_views/grid_view.dart';
import 'package:figmatoflutter/presentation/widgets/headers/header_1.dart';
import 'package:figmatoflutter/presentation/widgets/map/map.dart';
import 'package:figmatoflutter/presentation/widgets/row/row_view.dart';
import 'package:figmatoflutter/presentation/widgets/texts/text_header.dart';
import 'package:figmatoflutter/utils/app_images.dart';
import 'package:figmatoflutter/utils/app_padding.dart';
import 'package:figmatoflutter/utils/mock_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final listOfBadges = MockData.listOfBadges;
  final list = MockData.list;
  final listOfContainers = MockData.listOfContainers;

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
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfBadges.length,
                    itemBuilder: (context, index)=>Row(
                      children: [
                        MerchantsBadges(
                        image: listOfBadges[index].image, 
                        text: listOfBadges[index].text),
                        const SizedBox(width: 25)
                      ],
                    ))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}