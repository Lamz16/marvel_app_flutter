import 'package:flutter/material.dart';
import 'package:marvel_app/data/content_data.dart';
import 'package:marvel_app/my_colors.dart';

class ItemAvengers extends StatelessWidget {
  final SuperheroData avengers;

  const ItemAvengers(
      {Key? key,
      required this.avengers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(
              avengers.imageUrl,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            right: 20.0,
            bottom: 15.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              color: Colors.transparent,
              child: Text(
                avengers.name,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                    color: Colors.white),
              ),
            )),
        Positioned(
            left: 20.0,
            bottom: 25.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              color: Colors.transparent,
              child: Row(
                children: <Widget>[
                  Image.asset('assets/icon/fire.png', width: 10.0, height: 10.0, color: Colors.white,),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    avengers.popularity,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 10.0,
                        color: Colors.white),
                  ),
                ],
              )
            ))
      ],
    );
  }
}
