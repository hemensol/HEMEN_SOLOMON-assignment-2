import 'package:flutter/material.dart';

class SnackItems extends StatelessWidget {
  final String snackImage;
  final String snackName;
  final String price;

  const SnackItems({
    required this.snackImage,
    required this.snackName,
    required this.price,
    super.key
    });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          decoration: BoxDecoration(
            // border: Border.all(color: Color.fromARGB(255, 58, 58, 58), width: 5),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(
              color: Color.fromARGB(127, 0, 0, 0),
              blurRadius: 6,
              spreadRadius: 1
            )]
          ),
          height: 210,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
            Image( image: NetworkImage(snackImage), height: 152),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Expanded(child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Column(
                      children: [
                        Text(snackName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('$price\$', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
                        )
                      ],
                    ),  ],

                  )),
                ],
              ),
            )
          ],),
        ),
      ),
    );
  }
}