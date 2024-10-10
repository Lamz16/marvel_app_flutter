import 'package:flutter/material.dart';
import 'package:marvel_app/custom_view/detail_teks.dart';
import 'package:marvel_app/custom_view/irow_detail_hero.dart';
import 'package:marvel_app/data/content_data.dart';
import 'package:marvel_app/my_colors.dart';

class DetailScreen extends StatelessWidget {
  final SuperheroData avengers;
  const DetailScreen({Key? key, required this.avengers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var superHero = superHeroList.where((hero) => hero != avengers).toList();
    return Scaffold(
      backgroundColor: AppColors.orange,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin:
                    const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    avengers.imageUrl,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    semanticLabel: 'Image Hero',
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                avengers.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24.0),
              child: IrowDetailHero(avengers: avengers,),
            ),
            DetailTeks(
                teks: avengers.detail,
                margin: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0)),
            const SizedBox(
              height: 8.0,
            ),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: superHero.map((hero) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.darken,
                            ),
                            child: Image.asset(
                              hero.imageUrl,
                              height: 160,
                              width: 280,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20.0,
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        color: Colors.transparent,
                        child: Text(
                          hero.name,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Colors.white),
                        ),
                      ))
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
