import 'package:flutter/material.dart';
import 'package:insta_copia/image_avatar_border.dart';
import 'package:insta_copia/image_avatar_user.dart';
import 'package:insta_copia/post_factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Insta Copia by Gusta',
      home: MyHomePage(title: 'Insta Copia by Gusta'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage('assets/insta_logo.png'),
          width: 120,
          color: Colors.white,
        ),
        shadowColor: Colors.white12,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/add.png',
                color: Colors.white, height: 35, width: 35),
            onPressed: () {
              //fução ao pressionar o botao
            },
          ),
          IconButton(
            icon: Image.asset('assets/liked.png',
                color: Colors.white, height: 27, width: 27),
            onPressed: () {
              //fução ao pressionar o botao
            },
          ),
          IconButton(
            icon: Image.asset('assets/direct.png',
                color: Colors.white, height: 26, width: 26),
            onPressed: () {
              //fução ao pressionar o botao
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,

      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              border: Border(
                bottom: BorderSide(color: Colors.white60, width: 0.1),
              ),
            ),
            margin: const EdgeInsets.only(top: 10, right: 10),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                // Stories
                Padding(
                  padding: EdgeInsets.only(right: 12, left: 7),
                  child: ImageAvatarUser(
                    urlImage:
                        'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                    nome: "Seu Story",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: ImageAvatarBorder(
                    urlImage:
                        'https://observatoriodocinema.uol.com.br/wp-content/uploads/2022/08/willsmith__120111165106-1200x900-1.jpg',
                    nome: "willsmith",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: ImageAvatarBorder(
                    urlImage:
                        'https://r8p9h9p8.rocketcdn.me/wp-content/uploads/2022/07/Stephen-Curry.jpg',
                    nome: "StephenCurry",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: ImageAvatarBorder(
                    urlImage:
                        'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                    nome: "igorrozalem",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: ImageAvatarBorder(
                    urlImage:
                        'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                    nome: "douglas_marcionilio",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: ImageAvatarBorder(
                    urlImage:
                        'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                    nome: "wagnerfurno",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: ImageAvatarBorder(
                    urlImage:
                        'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                    nome: "jordao.rosario",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: ImageAvatarBorder(
                    urlImage:
                        'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                    nome: "joao_novato",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.size.height - 252,
            width: mediaQuery.size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                //Postagens no insta
                PostFactory(
                  nome: 'AndradGusta',
                  desc: 'Esta é uma descrição de teste',
                  urlImagePost:
                      'https://images.unsplash.com/photo-1493246507139-91e8fad9978e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8NGslMjBsYW5kc2NhcGV8ZW58MHx8MHx8&w=1000&q=80',
                  urlImage:
                      'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                  time: 'Há 1 hora',
                ),
                PostFactory(
                  urlImage:
                      'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                  desc: 'Trabalhando pra toma cachaça',
                  nome: 'douglas_marcionilio',
                  urlImagePost:
                      'https://www.contabilizei.com.br/contabilidade-online/wp-content/uploads/2022/05/profissional-de-ti-pode-ser-mei-profissional-codando-scaled.jpg',
                  time: 'Há 8 hora',
                ),
                PostFactory(
                  urlImage:
                      'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                  desc: 'Saudades ficar de Home Office',
                  nome: 'igorrozalem',
                  urlImagePost:
                      'https://blog.ahgora.com/wp-content/uploads/2020/04/shutterstock_737459251-1.jpg',
                  time: 'Há 3 hora',
                ),
                PostFactory(
                  urlImage:
                      'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                  desc: 'Vencemo fml',
                  nome: 'pedrinDotrafico',
                  urlImagePost:
                      'https://images2.alphacoders.com/546/546678.jpg',
                  time: 'Há 10 hora',
                ),
                PostFactory(
                  urlImage:
                      'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                  desc: 'Eu e meu irmao Sicrano',
                  nome: 'FunaldoDeTal',
                  urlImagePost:
                      'https://images.unsplash.com/photo-1564415051543-cb73a7468103?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnJvdGhlcnN8ZW58MHx8MHx8&w=1000&q=80',
                  time: 'Há 3 hora',
                ),
                PostFactory(
                  urlImage:
                      'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg',
                  desc: 'só de rolé',
                  nome: 'Sicrano',
                  urlImagePost:
                      'https://64.media.tumblr.com/484bc3c4b7c69da77c8934f4caab9d5e/f12c757615f33397-59/s640x960/19b0f58e641cd44dd2dc9f7664062bccc43b00c6.jpg',
                  time: 'Há 3 hora',
                ),
              ],
            ),
          )
        ],
      ),

      //                   MENU INFERIOR
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.black54, width: 0.1),
          ),
        ),
        child: BottomNavigationBar(
          selectedFontSize: 0,
          currentIndex: 2,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png',
                  color: Colors.white, height: 40, width: 40),
              label: '',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/search.png',
                  color: Colors.white, height: 30, width: 30),
              label: '',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/reels.png',
                  color: Colors.white, height: 30, width: 30),
              label: '',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/shop.png',
                  color: Colors.white, height: 30, width: 30),
              label: '',
              backgroundColor: Colors.black,
            ),
            const BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://apsec.iafor.org/wp-content/uploads/sites/37/2017/02/IAFOR-Blank-Avatar-Image.jpg'),
              ),
              label: '',
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
