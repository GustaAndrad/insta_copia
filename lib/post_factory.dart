import 'package:flutter/material.dart';

class PostFactory extends StatelessWidget {
  final String desc;
  final String nome;
  final String urlImagePost;
  final String urlImage;
  final String time;
  const PostFactory(
      {Key? key,
      required this.urlImage,
      required this.time,
      required this.desc,
      required this.nome,
      required this.urlImagePost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 5, top: 10, right: 10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(urlImage),
                  ),
                ),
                SizedBox(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 17,
                      width: mediaQuery.size.width - 110,
                      child: Text(
                        nome,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  alignment: Alignment.centerRight,
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              width: mediaQuery.size.width,
              color: Colors.black,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(urlImagePost),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/liked.png',
                      color: Colors.white, height: 25, width: 25),
                  onPressed: () {
                    //fução ao pressionar o botao
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/comment.png',
                      color: Colors.white, height: 29, width: 29),
                  onPressed: () {
                    //fução ao pressionar o botao
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/share.png',
                      color: Colors.white, height: 29, width: 29),
                  onPressed: () {
                    //fução ao pressionar o botao
                  },
                ),
                const SizedBox(
                  width: 200,
                ),
                IconButton(
                  alignment: AlignmentDirectional.centerEnd,
                  icon: Image.asset('assets/salvar.png',
                      color: Colors.white, height: 25, width: 25),
                  onPressed: () {
                    //fução ao pressionar o botao
                  },
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      nome,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  desc,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 3, bottom: 10),
                child: Text(
                  time,
                  style: const TextStyle(color: Colors.white54, fontSize: 10),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
