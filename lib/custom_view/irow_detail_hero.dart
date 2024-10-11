import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/my_colors.dart';
import '../data/content_data.dart';

class IrowDetailHero extends StatefulWidget {
  final SuperheroData avengers;

  const IrowDetailHero({Key? key, required this.avengers}) : super(key: key);

  @override
  _IrowDetailHeroState createState() => _IrowDetailHeroState();
}

class _IrowDetailHeroState extends State<IrowDetailHero> {


  Widget _buildIconWithLabel(
      String icon, String label, VoidCallback onPressed, String resource) {
    double size = 24.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: onPressed,
              child: Image.asset(icon, width: size, height: size),
            ),
            const SizedBox(height: 8.0),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              resource,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Poppins',
                color: AppColors.darkGrey,
              ),
              overflow: TextOverflow.clip,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildIconWithLabel('assets/icon/fire.png', 'Popularity', () {
          AwesomeDialog(
              context: context,
              dialogType: DialogType.noHeader,
              animType: AnimType.bottomSlide,
              title: 'Hero Popularity',
              dialogBackgroundColor: AppColors.orange,
              titleTextStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 24.0),
              descTextStyle: const TextStyle(
                  fontFamily: 'Poppins', fontWeight: FontWeight.w300),
              desc:
                  '${widget.avengers.name} has a popularity of \n ${widget.avengers.popularity}',
              btnOkColor: AppColors.darkGrey,
              btnOkText: 'Herooo!',
              btnOkOnPress: () {
                setState(() {
                  widget.avengers.popularity++;
                });
              }).show();
        }, '${widget.avengers.popularity}'),
        const SizedBox(height: 16.0),
        _buildIconWithLabel('assets/icon/superhero.png', 'Type', () {
          AwesomeDialog(
                  context: context,
                  dialogType: DialogType.noHeader,
                  animType: AnimType.topSlide,
                  title: 'Type Power',
                  dialogBackgroundColor: AppColors.orange,
                  titleTextStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0),
                  descTextStyle: const TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w300),
                  desc: widget.avengers.type)
              .show();
        }, widget.avengers.type),
        const SizedBox(height: 16.0),
        _buildIconWithLabel('assets/icon/strength.png', 'Total Strength', () {
          AwesomeDialog(
                  context: context,
                  dialogType: DialogType.noHeader,
                  animType: AnimType.topSlide,
                  title: 'Total Strength',
                  dialogBackgroundColor: AppColors.orange,
                  titleTextStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0),
                  descTextStyle: const TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w300),
                  desc: widget.avengers.strength)
              .show();
        }, widget.avengers.strength),
      ],
    );
  }
}
