//import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebookuiclone/models/user_model.dart';
import 'package:facebookuiclone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostsContainer extends StatelessWidget {
  final User currentUser;

  CreatePostsContainer({Key key, @required this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ProfileAvatar(imageUrl: currentUser.imageUrl),
          const SizedBox(width: 8.0),
          Expanded(
              child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What\'s on your mind")))
        ]),
        const Divider(height: 10.0, thickness: 1.5),
        Container(
          height: 40.0,
          child: Row(children: [
            TextButton.icon(
              onPressed: () => print('Live'),
              icon: const Icon(Icons.videocam, color: Colors.red),
              label: Text('Live'),
            ),
            const VerticalDivider(width: 8.0),
            TextButton.icon(
              onPressed: () => print('Photo Moto'),
              icon: const Icon(Icons.photo_library, color: Colors.green),
              label: Text('Photo Moto'),
            ),
            const VerticalDivider(width: 8.0),
            TextButton.icon(
              onPressed: () => print('Room'),
              icon: const Icon(Icons.video_call, color: Colors.purpleAccent),
              label: Text('Room'),
            ),
          ]),
        )
      ]),
    );
  }
}
