import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 50,
        width: 50,
        child: CachedNetworkImage(
          imageUrl:
              "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg",
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              color: Colors.green,
              value: progress.progress,
              strokeWidth: 5,
            ),
          ),
          imageBuilder: (context, imageProvider) =>
              CircleAvatar(backgroundImage: imageProvider, radius: 28),
        ),
      ),
      title: Text("Nombre de la persona"),
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      subtitle: Text(
        "Este es un mensaje de la persona que te escribe, dice muchas cosas, debes prestar atecnón asoidasd asd asd adas das da sda sd asd as dasd s",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("15:30"),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text("1", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
