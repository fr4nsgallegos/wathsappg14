import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CallWidgetPage extends StatelessWidget {
  const CallWidgetPage({super.key});

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
      trailing: Icon(Icons.call, color: Colors.green),
      title: Text("Juan Manuel"),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.call_made, color: Colors.green),
          Text("Ayer 15:15"),
        ],
      ),
    );
  }
}
