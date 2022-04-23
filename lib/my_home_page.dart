import 'package:flutter/material.dart';

import 'controller.dart';
import 'model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Album> futureAlbum;
  // Album datas = [] as Album;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    // fetchAlbum().then((value){
    //   datas = albumFromJson(value);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: 1,
                itemBuilder: (context, index) {
              return Container(
                child: Text('${snapshot.data!.data!.promoCode}'),
              );
            });
          } else if (!snapshot.hasData) {
            print(snapshot);
            return Center(child: Text('$snapshot'));
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
