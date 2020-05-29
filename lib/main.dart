import 'package:flutter/material.dart';
import 'package:videoapp/chewie_list_item.dart';
import 'package:videoapp/models/video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Video> videoList = [
    Video("https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4", "Video 1", "Descripcion del video 1"),
    Video("https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4", "Video 2", "Descripcion del video 2"),
    Video("https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4", "Video 3", "Descripcion del video 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: videoList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.black54
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ChewieListItem(
                  videoUrl: videoList[index].url,
                  looping: true,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    videoList[index].title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      videoList[index].description,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.start,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
