import 'package:clone_instagram/components/feed.dart';
import 'package:clone_instagram/components/lista_stories.dart';
import 'package:clone_instagram/components/stories_curtidas.dart';
import 'package:clone_instagram/components/stories_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          iconSize: 30,
          //currentIndex: indexSelect,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //sem esse atributo, os itens ficam brancos
          type: BottomNavigationBarType.fixed,
          onTap: (index) {},
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_filled,
              ),
            ),
            BottomNavigationBarItem(
              label: 'search',
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/lupa.png',
                ),
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Flutter',
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/reels.png',
                ),
                //size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Marcas',
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/sacolas.png',
                ),
                size: 27,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: SizedBox(
                height: 30,
                width: 30,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://sm.ign.com/ign_br/screenshot/default/8th-hokage-featured_bfjx.jpg',
                  ),
                ),
              ),
            ),
          ]),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Image.asset(
            'assets/logo-insta.png',
            width: 130,
            height: 100,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(
                'assets/icons/add.png',
              ),
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(
                'assets/icons/gostar.png',
              ),
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(
                'assets/icons/messenger.png',
              ),
              size: 29,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListaStories(),
            FeedCustom(),
          ],
        ),
      ),
    );
  }
}
