import 'package:flutter/material.dart';
import '../screens/detail_page.dart';
import '../util/banner.dart';

void navigateToPage(BuildContext context, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => DetailPage(data: banner[index])),
  );
}
