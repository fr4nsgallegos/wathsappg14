import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> titulos = ["Noticias", "Mensajes", "Ajustes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Tab bar vertical")));
  }
}
