import 'package:flutter/material.dart';

class ItemStatusWidget extends StatelessWidget {
  bool isCabecera;

  ItemStatusWidget({this.isCabecera = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(2),
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(50),
          child: Image.network(
            isCabecera
                ? "https://images.pexels.com/photos/773371/pexels-photo-773371.jpeg"
                : "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text("Mi estado"),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      subtitle: Text(
        "${isCabecera ? 'Hace 27 minutos, 7:10 pm' : 'Ayer, 15:30'}",
      ),
      trailing: isCabecera ? Icon(Icons.more_horiz) : null,
    );
  }
}
