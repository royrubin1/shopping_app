import 'package:flutter/material.dart';
import '../models/database.dart';

class ProductBlock extends StatelessWidget {
  //ProductBlock({super.key});

  ProductBlock(this.indexParam, {super.key});

  final int indexParam;

  final map1 = Database().getMap();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          Image(
            image: NetworkImage(map1[indexParam]['URL'].toString()),
            width: 150,
            height: 150,
          ),
          Text(
              '€${map1[indexParam]['Price'].toString()} ${map1[indexParam]['Title'].toString()}'),
        ],
      ),
    );
  }
}
