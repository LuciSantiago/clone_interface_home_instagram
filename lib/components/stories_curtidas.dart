import 'package:flutter/material.dart';

class ImageAvatarCurtida extends StatelessWidget {
  final String urlImage;
  const ImageAvatarCurtida({Key? key, required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.black,
            //color: Colors.red,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          width: 25,
          height: 25,
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
      ],
    );
  }
}
