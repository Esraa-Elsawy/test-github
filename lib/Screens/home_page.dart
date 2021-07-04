import 'dart:io';
import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/photo_expandableFAB.dart';
import 'package:image_picker/image_picker.dart';
import 'package:graduation_project/Screens/action_button.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:graduation_project/recognisedText.dart';
import 'package:share_plus/share_plus.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File _image = File('');
  final picker = ImagePicker();

  Future getImage(int i) async {
    final pickedFile = (i==0)? await picker.getImage(source: ImageSource.camera) : await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<List<recognisedText>> _getTexts() async {
    var data = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    var jsonData = json.decode(data.body);
    List<recognisedText> texts = [];
    for(var u in jsonData){
      recognisedText text = recognisedText(u["postId"], u["id"], u["name"], u["email"], u["body"]);
      texts.add(text);
    }
    print(texts.length);
    return texts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read me'),
      ),
        body: Container(
          child: FutureBuilder(
            future: _getTexts(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              print(snapshot.data);
              if(snapshot.data == null){
                return Container(
                    child: Center(
                        child: Text("Loading...")
                    )
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      /*
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            snapshot.data[index].picture
                        ),
                      ),
                       */
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].email),
                      onTap: (){
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => DetailPage(snapshot.data[index]))
                        );
                      },
                    );
                  },
                );
              }
            },
          ),
        ),
      /*
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
       */
      floatingActionButton: PhotoExpandableFAB(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () async => await getImage(0),
            icon: const Icon(Icons.photo_camera_rounded),
          ),
          ActionButton(
            onPressed: () async => await getImage(1),
            icon: const Icon(Icons.add_photo_alternate),
          ),
        ],
      )
    );
  }
}



class DetailPage extends StatelessWidget {
  final recognisedText text;
  DetailPage(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scan result"),
          actions: [
            IconButton(
              icon: const Icon(Icons.volume_up),
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: (){
                Share.share(text.body);
              },
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: (){},
            ),
          ],

        ),
      body: Text(text.body),
    );
  }
}
