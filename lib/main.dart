import 'package:flutter/material.dart';
import 'package:videoapp/chewie_list_item.dart';

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
  final List<String> videoList = [
    "https://vod-progressive.akamaized.net/exp=1590004523~acl=*%2F402235088.mp4%2A~hmac=bcd423898d582fbb39ec6c8b16a26e5e49c765c66fc90d5a77375c721fac8cf0/vimeo-prod-skyfire-std-us/01/2170/5/135852516/402235088.mp4",
    "https://vod-progressive.akamaized.net/exp=1590005618~acl=%2A%2F402234527.mp4%2A~hmac=3f89716da1c10607ca915196b55c5cc4f006deabcdc1dd60edde70f9a82798c2/vimeo-prod-skyfire-std-us/01/2170/5/135852365/402234527.mp4",
    "https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4",
    "https://vod-progressive.akamaized.net/exp=1590004523~acl=*%2F402235088.mp4%2A~hmac=bcd423898d582fbb39ec6c8b16a26e5e49c765c66fc90d5a77375c721fac8cf0/vimeo-prod-skyfire-std-us/01/2170/5/135852516/402235088.mp4",
    "https://vod-progressive.akamaized.net/exp=1590005618~acl=%2A%2F402234527.mp4%2A~hmac=3f89716da1c10607ca915196b55c5cc4f006deabcdc1dd60edde70f9a82798c2/vimeo-prod-skyfire-std-us/01/2170/5/135852365/402234527.mp4",
    "https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4",
    "https://vod-progressive.akamaized.net/exp=1590004523~acl=*%2F402235088.mp4%2A~hmac=bcd423898d582fbb39ec6c8b16a26e5e49c765c66fc90d5a77375c721fac8cf0/vimeo-prod-skyfire-std-us/01/2170/5/135852516/402235088.mp4",
    "https://vod-progressive.akamaized.net/exp=1590005618~acl=%2A%2F402234527.mp4%2A~hmac=3f89716da1c10607ca915196b55c5cc4f006deabcdc1dd60edde70f9a82798c2/vimeo-prod-skyfire-std-us/01/2170/5/135852365/402234527.mp4",
    "https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: videoList.length,
        itemBuilder: (context, index) {
          return ChewieListItem(
            videoUrl: videoList[index],
            looping: true,
          );
        },
      ),
    );
  }
}
