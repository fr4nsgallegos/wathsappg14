import 'package:flutter/material.dart';
import 'package:whatsappg14/pages/home_page.dart';
import 'package:whatsappg14/pages/widgets/tabbar_page_simple.dart';
import 'package:whatsappg14/pages/widgets/tabbar_state_page.dart';
import 'package:whatsappg14/pages/widgets/tabbar_vertical.dart';

void main() {
  runApp(
    MaterialApp(home: TabbarVertical(), debugShowCheckedModeBanner: false),
  );
}
