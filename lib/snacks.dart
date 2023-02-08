import 'dart:convert';

import 'package:snack_bar/snack_items.dart';
import 'package:flutter/material.dart';

class Snacks extends StatelessWidget {
  Snacks({super.key});

   final List<Snack> _snacks = [
    Snack(
        snackName: 'John Doe',
        snackImage:
            'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg'),
    Snack(
        snackName: 'Johnny Doe',
        snackImage:
            'https://img.freepik.com/free-photo/classic-portrait-silhouette-man_23-2149707006.jpg?size=626&ext=jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: ListView.builder(
          itemCount: _snacks.length,
          itemBuilder: (context, index) {
            return SnackItems(
              snackName: _snacks[index].snackName,
              snackImage: _snacks[index].snackImage,
            );
          },
        )
    );
  }
}

class Snack{
  String snackName;
  String snackImage;

  Snack({
    required this.snackName,
    required this.snackImage
  });
}
