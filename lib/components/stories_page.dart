import 'package:flutter/material.dart';

class StoriesPageCustom extends StatefulWidget {
  final String urlImage;
  final bool live;
  final bool closeFriends;
  final String user;
  const StoriesPageCustom(
      {Key? key,
      required this.urlImage,
      required this.live,
      required this.closeFriends,
      required this.user})
      : super(key: key);

  @override
  State<StoriesPageCustom> createState() => _StoriesPageCustomState();
}

class _StoriesPageCustomState extends State<StoriesPageCustom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          //alignment: AlignmentDirectional.topCenter,
          children: [
            widget.closeFriends
                ? Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        tileMode: TileMode.clamp,
                        begin: Alignment.bottomCenter,
                        colors: [
                          //PARA TRABALHAR COM CORES HEXADECIMAIS, VC FIXA PRIMEIRO 0XFF E DEPOIS TIRA O # E COLOCA O CÓDIGO
                          //final cor = Colors.red
                          //final cor = Colors.red.withOpacity(0.5);
                          //final cor = Colors.fromRGB(r,g,b,opacity);
                          Color(0XFF76D054),
                          Color(0XFF76D054),
                        ],
                      ),
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
                : Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        tileMode: TileMode.clamp,
                        begin: Alignment.bottomCenter,
                        colors: [
                          //PARA TRABALHAR COM CORES HEXADECIMAIS, VC FIXA PRIMEIRO 0XFF E DEPOIS TIRA O # E COLOCA O CÓDIGO
                          //final cor = Colors.red
                          //final cor = Colors.red.withOpacity(0.5);
                          //final cor = Colors.fromRGB(r,g,b,opacity);

                          Color(0XFFFAA85E),
                          Color(0XFFC72D8F),
                        ],
                      ),
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),

            Container(
              width: 70,
              height: 70,
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                backgroundImage: NetworkImage(widget.urlImage),
              ),
            ),
            //* é o do aovivo
            widget.live
                ? Container(
                    width: 70,
                    height: 70,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 202, 49, 146),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Text('Ao vivo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            )),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            widget.user,
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
