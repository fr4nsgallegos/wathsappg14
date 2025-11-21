import 'package:flutter/material.dart';

class TabbarPage extends StatelessWidget {
  const TabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //número de pestañas
      initialIndex: 0, //por defecto  es 0, indica pestaña inicial
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            //conjunto de pestañas
            indicatorColor: Colors.blue, //Color de la barra que selecciona
            indicatorWeight: 4, //Ancho de la barra
            labelColor: Colors.red, //color del label (tab)
            isScrollable:
                false, //si tienes muchas pestañas te ayuda a desplazar
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.star), text: "Favoritos"),
              Tab(icon: Icon(Icons.person), text: "Perfil"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("home")),
            Center(child: Text("Favoritos")),
            Center(child: Text("Perfil")),
          ],
        ),
      ),
    );
  }
}
