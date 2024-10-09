import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Tambahkan import ini jika belum ada

class DetailTeks extends StatelessWidget {
  final String teks;
  final EdgeInsetsGeometry margin;

  const DetailTeks({
    Key? key,
    required this.teks,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: RichText(
        text: TextSpan(
          text: teks,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600
          ),
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
