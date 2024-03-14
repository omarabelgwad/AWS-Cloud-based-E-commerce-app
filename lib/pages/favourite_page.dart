import 'package:flutter/material.dart';
class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Favourites",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 60,
        ),
      ),
    );
  }
}
