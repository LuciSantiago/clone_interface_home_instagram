import 'package:clone_instagram/components/stories_page.dart';
import 'package:flutter/material.dart';

class ListaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: StoriesPageCustom(
                  urlImage:
                      'https://sm.ign.com/ign_br/screenshot/default/8th-hokage-featured_bfjx.jpg',
                  live: false,
                  closeFriends: false,
                  user: 'Seu story'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: StoriesPageCustom(
                  urlImage:
                      'https://www.einerd.com.br/wp-content/uploads/2021/06/boruto-sasuke-890x467.jpeg',
                  live: true,
                  closeFriends: false,
                  user: 'Sasuke'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: StoriesPageCustom(
                  urlImage:
                      'https://static.wikia.nocookie.net/naruto/images/6/6c/Shikamaru_%28Ep%C3%ADlogo%29.png/revision/latest?cb=20151227200439&path-prefix=pt-br',
                  live: false,
                  closeFriends: false,
                  user: 'Shikamaru'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: StoriesPageCustom(
                  urlImage:
                      'https://sm.ign.com/ign_br/screenshot/default/blob_r2na.jpg',
                  live: false,
                  closeFriends: true,
                  user: 'Sakura'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: StoriesPageCustom(
                  urlImage:
                      'https://conteudo.imguol.com.br/c/entretenimento/52/2017/04/28/boruto-uzumaki-1493397105426_v2_3x4.png',
                  live: false,
                  closeFriends: false,
                  user: 'Boruto'),
            ),
          ],
        ),
      ),
    );
  }
}
