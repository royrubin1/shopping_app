import 'package:flutter/material.dart';

class ProductBlock extends StatelessWidget {
  //ProductBlock({super.key});

  ProductBlock(this.indexParam, {super.key});

  final int indexParam;
  final List<Map<String, Object>> map1 = [
    {
      'URL':
          'https://cdn.pixabay.com/photo/2020/05/26/09/32/product-5222398_960_720.jpg',
      'Price': 50,
      'Title': 'Sunglasses'
    },
    {
      'URL':
          'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-math-90946.jpg&fm=jpg',
      'Price': 150,
      'Title': 'Camera Fujifilm'
    },
  ];

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
