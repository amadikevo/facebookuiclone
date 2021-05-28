import 'package:facebookuiclone/config/palette.dart';
import 'package:facebookuiclone/models/user_model.dart';
import 'package:facebookuiclone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  Rooms({
    Key key,
    @required this.onlineUsers,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProfileAvatar(
                  imageUrl: user.imageUrl,
                  isActive: true,
                ));
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => print('create room'),
        style: OutlinedButton.styleFrom(
          textStyle: TextStyle(
            color: Palette.facebookBlue,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(width: 5.0, color: Colors.blueAccent),
          ),
        ),
        child: Row(
          children: [
            //       ShaderMask(
            //           shaderCallback: (rect) =>
            //           Palette.createRoomGradient.createShader(rect),
            //     child: Icon(Icons.video_call, size: 35.0, color: Colors.white),
            //    ),

            Icon(Icons.video_call, size: 35.0, color: Colors.purple),
            const SizedBox(width: 40),
            Text("Create\nRoom"),
          ],
        ));
  }
}