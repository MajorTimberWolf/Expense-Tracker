// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  final String image_path;
  const MainLogo({
    super.key,
    required this.image_path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(image_path, height: 150,),
    );
  }
}
