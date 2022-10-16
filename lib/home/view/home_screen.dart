import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Pokemon/constants/theme_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Color.fromARGB(255, 215, 143, 150),
              ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 34,
            color: Color.fromARGB(255, 215, 143, 150),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 12,
            height: 117,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                // fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
