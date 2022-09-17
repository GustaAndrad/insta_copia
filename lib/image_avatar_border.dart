import 'package:flutter/material.dart';

class ImageAvatarBorder extends StatelessWidget {
  final String urlImage;
  final String nome;
  const ImageAvatarBorder(
      {Key? key, required this.urlImage, required this.nome})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 75,
          height: 75,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            gradient: const LinearGradient(colors: [
              Colors.red,
              Colors.purple,
              Colors.red,
              Colors.amber,
              Colors.red
            ], begin: Alignment.bottomLeft),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        //                   NOME DEBAIXO DO STOIRES
        SizedBox(
          width: 75,
          height: 97,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 17,
              child: Text(
                nome,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
