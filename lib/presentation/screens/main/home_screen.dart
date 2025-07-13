import 'package:figmatoflutter/domain/entity/card_list_entity.dart';
import 'package:figmatoflutter/presentation/widgets/badges/avatar_badge.dart';
import 'package:figmatoflutter/presentation/widgets/cards/card_list.dart';
import 'package:figmatoflutter/presentation/widgets/containers/balance_container.dart';
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
        headingColorText: Color.fromRGBO(233, 122, 98, 1),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            AvatarBadge(),
            const SizedBox(width: 12),
            TextHeader(text: 'Welcome Back', name: 'Christian'),
            const SizedBox(width: 20),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}