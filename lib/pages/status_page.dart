import 'package:flutter/material.dart';
import 'package:whatsappg14/widgets/item_status_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemStatusWidget(isCabecera: true),
        Container(
          padding: EdgeInsets.all(4),
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.grey.shade200,
          child: Text(
            "Actualizaciones disponibles",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
      ],
    );
  }
}
