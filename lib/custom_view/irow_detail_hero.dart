import 'package:flutter/material.dart';
import 'package:marvel_app/my_colors.dart';

import '../data/content_data.dart';

class IrowDetailHero extends StatelessWidget {
  final SuperheroData avengers;
  const IrowDetailHero({Key? key, required this.avengers}) : super(key: key);

  Widget _buildIconWithLabel(
      String icon, String label, VoidCallback onPressed, String resource) {
    double size = 20.0; //Size of icon
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        InkWell(
            onTap: onPressed,
            child: Image.asset(icon, width: size, height: size)),
        const SizedBox(
          height: 8.0,
        ),
        Text(label,
            style:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, fontFamily: 'Poppins')),
        Text(resource,
            style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Poppins',
                color: AppColors.darkGrey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildIconWithLabel('assets/icon/fire.png', 'Popularity', () {
          showDialog(context: context, builder: (context){
            return AlertDialog(
              content: Text('The popularity is ${avengers.popularity}'),
            );
          });
        }, avengers.popularity),
        _buildIconWithLabel('assets/icon/superhero.png', 'Type', () {
          showDialog(context: context, builder: (context){
            return AlertDialog(
              content: Text('Hero type is ${avengers.type}'),
            );
          });
        }, 'Physical'),
        _buildIconWithLabel('assets/icon/strength.png', 'Total Strength', () {
          showDialog(context: context, builder: (context){
            return AlertDialog(
              content: Text('The strength is ${avengers.strength} Powers'),
            );
          });
        }, avengers.strength)
      ],
    );
  }
}
