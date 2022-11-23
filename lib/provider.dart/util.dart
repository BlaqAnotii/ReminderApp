import 'package:flutter/material.dart';

Container leadImage(String asset) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(45)),
        image: DecorationImage(image: AssetImage(asset))),
  );
}
