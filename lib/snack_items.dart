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
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
        Image.network(snackImage), 
        const SizedBox(width: 1),
        Row(
          children: [
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(snackName), const SizedBox(width: 3)],

            )),
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(snackName), const SizedBox(width: 3)],

            ))
          ],
        )
        // Expanded(
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [Text(snackName), const SizedBox(width: 8)],

        // ))

      ],),
    );
  }
}