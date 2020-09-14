import 'package:blog_application/provider/album_provider.dart';
import 'package:blog_application/widgets/album_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlbumScreen extends StatelessWidget {
  static const routeName = "/album_screen";

  @override
  Widget build(BuildContext context) {
    final albums = Provider.of<Albums>(context, listen: false);
    final userId = ModalRoute.of(context).settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text("Albums"),
      ),
      backgroundColor: Colors.blue[400],
      body: FutureBuilder(
        future: albums.fetchAlbum(userId),
        builder: (ctx, snapshot) {
          return ListView.builder(
            itemBuilder: (ctx, index) {
              return ChangeNotifierProvider.value(
                value: albums.albums[index],
                child: AlbumDetail(),
              );
            },
            itemCount: albums.albums.length,
          );
        },
      ),
    );
  }
}
