import 'package:flutter/material.dart';
import 'package:marvel_app/my_colors.dart';

class FavoriteButton extends StatefulWidget{
  const FavoriteButton({Key? key }) : super(key: key);


  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,color: AppColors.red,size: 36.0,),
      onPressed: (){
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}