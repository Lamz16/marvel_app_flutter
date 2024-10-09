import 'package:flutter/material.dart';


class IrowDetailHero extends StatelessWidget{
  const IrowDetailHero({Key? key}) : super(key: key);

  Widget _buildIconWithLabel(String icon, String label, VoidCallback onPressed){
    double size = 20.0; //Size of icon
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
      InkWell(
      onTap: onPressed,
      child: Image.asset(icon, width: size,height: size)),
          const SizedBox(height: 8.0,),
          Text(label, style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),)
        ],
      );

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildIconWithLabel('assets/icon/fire.png', 'Popularity', (){ print('Item Clicked');}),
        _buildIconWithLabel('assets/icon/superhero.png', 'Type',(){ print('Item Clicked');}),
        _buildIconWithLabel('assets/icon/strength.png', 'Total Strength',(){ print('Item Clicked');})
      ],
    );
  }

}