import 'package:flutter/material.dart';
import 'package:marvel_app/my_colors.dart';

class IrowDetailHero extends StatelessWidget {
  const IrowDetailHero({Key? key}) : super(key: key);

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
            return const AlertDialog(
              content: Text('The popularity is 1.800.000'),
            );
          });
        }, '1.800.000'),
        _buildIconWithLabel('assets/icon/superhero.png', 'Type', () {
          showDialog(context: context, builder: (context){
            return const AlertDialog(
              content: Text('Hero type is Physical'),
            );
          });
        }, 'Physical'),
        _buildIconWithLabel('assets/icon/strength.png', 'Total Strength', () {
          showDialog(context: context, builder: (context){
            return const AlertDialog(
              content: Text('The strength is 92 Powers'),
            );
          });
        }, '92/100')
      ],
    );
  }
}
