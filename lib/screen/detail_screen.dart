import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/custom_view/detail_teks.dart';
import 'package:marvel_app/custom_view/favorite_button.dart';
import 'package:marvel_app/custom_view/irow_detail_hero.dart';
import 'package:marvel_app/data/content_data.dart';
import 'package:marvel_app/my_colors.dart';

class DetailScreen extends StatefulWidget {
  final SuperheroData avengers;

  const DetailScreen({Key? key, required this.avengers}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var superHero =
        superHeroList.where((hero) => hero != widget.avengers).toList();

    return Scaffold(
      backgroundColor: AppColors.orange,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios, color: AppColors.black,), padding: const EdgeInsets.only(left: 16.0  ), alignment: Alignment.centerLeft,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 16.0, right: 16.0, left: 16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              widget.avengers.imageUrl,
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                              semanticLabel: 'Image Hero',
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 36.0,
                                color: Colors.black.withOpacity(0.3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
                                      child: FavoriteButton(
                                        onFavoriteToggle: (isFavorite) {
                                          setState(() {});
                                          AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.success,
                                            animType: AnimType.scale,
                                            title: isFavorite
                                                ? 'Hero Added to Favorite!'
                                                : 'Hero Removed from Favorite!',
                                            dialogBackgroundColor:
                                                AppColors.orange,
                                            body: Column(
                                              children: [
                                                Image.asset(
                                                  widget.avengers.imageUrl,
                                                  height: 180,
                                                ),
                                                const SizedBox(height: 16),
                                                const Text(
                                                  'You are Heroo!',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ],
                                            ),
                                          ).show();
                                        },
                                        superheroData: widget.avengers,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(top: 24.0),
                      child: IrowDetailHero(
                        avengers: widget.avengers,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  widget.avengers.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins'),
                ),
              ),
              DetailTeks(
                teks: widget.avengers.detail,
                margin:
                    const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Other avengers',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: superHero.map((hero) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(avengers: hero);
                            }));
                          },
                          child: Stack(
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  color: Colors.transparent,
                                  child: Text(
                                    hero.name,
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    '${widget.avengers.name} enemy',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.avengers.heroEnemy?.length ?? 0,
                    itemBuilder: (context, index) {
                      HeroEnemy enemy = widget.avengers.heroEnemy![index];
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
                                  enemy.imageUrl ?? 'assets/images/default.png',
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
                                enemy.name ?? 'Unknown Enemy', // Nama default jika null
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
