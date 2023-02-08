import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:snack_bar/snack_items.dart';
import 'package:flutter/material.dart';

class Snacks extends StatelessWidget {
  Snacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar', style: TextStyle(color: Color.fromARGB(255, 194, 0, 215), fontSize: 36, fontWeight: FontWeight.w600),),
        backgroundColor: Colors.white ,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0, bottom: 15.0),
        child: Center(
          child: Column( 
            children: [
            Row(
              children: const [
              Expanded(
                child: SnackItems(snackImage: 'https://img.freepik.com/premium-vector/striped-box-container-with-delicious-popcorn-white-background_281653-1140.jpg?w=2000', snackName: 'Pop Corn', price: '25'),
              ),
              Expanded(
                child: SnackItems(snackImage: 'https://www.seekpng.com/png/detail/761-7619514_doritos-nacho-cheese-doritos-bag-transparent-background.png', snackName: 'Doritos', price: '20'),
              ),
              ],
            ),
            Row(
              children: const [
              Expanded(
                child: SnackItems(snackImage: 'https://media.istockphoto.com/id/458678045/photo/lays-potato-chips.jpg?s=612x612&w=0&k=20&c=vm2Gy6O7wr7PTIkdIntIiBZVUJiisHwyxcK6hYbrNT8=', snackName: 'Lays', price: '15'),
              ),
              Expanded(
                child: SnackItems(snackImage: 'https://thumbs.dreamstime.com/b/sprite-can-white-background-chisinau-moldova-november-popular-lemon-lime-flavored-soft-drink-created-coca-cola-64145037.jpg', snackName: 'Soda', price: '30'),
              ),
              ],
            ),
            Row(
              children: const [
              Expanded(
                child: SnackItems(snackImage: 'https://media.istockphoto.com/id/965515654/photo/pretzels-isolated-on-a-white-background.jpg?s=612x612&w=0&k=20&c=IuGZBfOkBc7rlZxSTaH_1JCtX-66ZyXcn_ibOpKOOOE=', snackName: 'Pretzels', price: '50'),
              ),
              Expanded(
                child: SnackItems(snackImage: 'https://media.istockphoto.com/id/499621987/photo/cheetos-crunchy-snack.jpg?s=612x612&w=0&k=20&c=uVLL4CLDLZ-zduwBbbBvwQR7fGTb881yfZIX9l5KJpA=', snackName: 'Cheetos', price: '35'),
              ),
              ],
            ),
            ],
          ),
        ),
      )
    );
  }
}
