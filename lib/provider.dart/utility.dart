import 'package:flutter/material.dart';

Container profileImage(String asset) {
  return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(35)),
        image: DecorationImage(image: AssetImage(asset))),
  );
}
