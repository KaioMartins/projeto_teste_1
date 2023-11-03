import 'package:flutter/material.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
          actions: [
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // Adicione ação para abrir as mensagens diretas.
              },
            ),
          ],
        ),
        body: Column(
          children: [
            // Aqui você pode adicionar uma lista de postagens (feed) em um ListView.
            // Cada postagem pode ser construída como um widget separado.
            PostWidget(
                username: 'example_user', caption: 'Uma legenda para o post.'),
            // Adicione mais postagens aqui...
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String username;
  final String caption;

  PostWidget({required this.username, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Aqui você pode criar o widget de imagem ou vídeo do post.
        // Exemplo: Image.network('URL_DA_IMAGEM_OU_VIDEO'),
        // Em seguida, adicione o nome de usuário e a legenda abaixo da imagem.
        Text(username),
        Text(caption),
        // Adicione os ícones de ação (curtir, comentar, compartilhar, salvar) e a seção de comentários aqui...
      ],
    );
  }
}
