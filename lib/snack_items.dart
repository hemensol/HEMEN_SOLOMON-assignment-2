import 'package:flutter/material.dart';

class SnackItems extends StatelessWidget {
  final String snackImage;
  final String snackName;

  const SnackItems({
    required this.snackImage,
    required this.snackName,
    super.key
    });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 230,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
          Image( image: NetworkImage(snackImage), height: 170),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(snackName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)), const SizedBox(width: 3)],

                )),
              ],
            ),
          )
        ],),
      ),
    );
  }
}