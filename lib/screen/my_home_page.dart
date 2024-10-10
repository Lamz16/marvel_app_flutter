import 'package:flutter/material.dart';
import 'package:marvel_app/custom_view/item_avengers.dart';
import 'package:marvel_app/data/content_data.dart';
import 'package:marvel_app/my_colors.dart';
import 'package:marvel_app/screen/detail_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.black,
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: AppColors.black,
        body: ListView.builder(
          itemBuilder: (context, index) {
            final SuperheroData superHero = superHeroList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(avengers: superHero);
                }));
              },
              child: ItemAvengers(avengers: superHero),
            );
          },
          itemCount: superHeroList.length,
        ));
  }
}
