import 'package:flutter/material.dart';
import 'package:marvel_app/data/content_data.dart';

class FavoriteButton extends StatefulWidget{

  final Function(bool isFavorite)? onFavoriteToggle;
  final SuperheroData superheroData;

  const FavoriteButton({Key? key, this.onFavoriteToggle, required this.superheroData }) : super(key: key);


  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,color: Colors.white,size: 24.0,),
      onPressed: (){
        setState(() {
          isFavorite = !isFavorite;
          if(isFavorite){
            widget.superheroData.popularity++;
          }else{
            widget.superheroData.popularity--;
          }
        });
        if (widget.onFavoriteToggle != null) {
          widget.onFavoriteToggle!(isFavorite);
        }
      },
    );
  }
}