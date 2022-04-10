import 'package:clone_instagram/components/stories_curtidas.dart';
import 'package:flutter/material.dart';

class FeedCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.white38,
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://static.wikia.nocookie.net/naruto/images/e/ef/Kakashi_%28Boruto%29.png/revision/latest?cb=20181122180026&path-prefix=pt-br',
            ),
          ),
          title: Text(
            'hatake_kakashi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
        Container(
          height: 320,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://criticalhits.com.br/wp-content/uploads/2021/12/Hokage_Kakashi.jpg',
              ),
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  'assets/icons/coracao.png',
                ),
                color: Colors.white,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  'assets/icons/comente.png',
                ),
                color: Colors.white,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  'assets/icons/enviar.png',
                ),
                color: Colors.white,
                size: 25,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline_rounded,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
        SizedBox(
          child: Row(
            children: [
              SizedBox(
                width: 60,
                child: Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: ImageAvatarCurtida(
                        urlImage:
                            'https://conteudo.imguol.com.br/c/entretenimento/52/2017/04/28/boruto-uzumaki-1493397105426_v2_3x4.png',
                      ),
                    ),
                    Positioned(
                      left: 20,
                      child: ImageAvatarCurtida(
                        urlImage:
                            'https://observatoriodocinema.uol.com.br/wp-content/uploads/2019/04/8195ab107d6de7e385cf24f881093cac.jpg',
                      ),
                    ),
                    Positioned(
                      left: 35,
                      child: ImageAvatarCurtida(
                        urlImage:
                            'http://4.bp.blogspot.com/-HhA2QBMRpcQ/T9_OejrFODI/AAAAAAAABso/NcmWe1GD9uA/s1600/Gai.jpg',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              const Text(
                'Curtido por',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                'Maito guy',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                'e',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                'outras 987 pessoas',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'hatake_kakashi',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '#tbt hokake',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 5.0),
          child: Row(
            children: const [
              Text(
                'Ver todos os 987 comentários',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
