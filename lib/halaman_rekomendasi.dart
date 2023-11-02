import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data.dart';

class rekomendasi extends StatefulWidget {
  //const rekomendasi({Key? key, required this.SosMed, required this.index}) : super(key: key);

  //final data SosMed;
  //final int index; //
  @override
  State<rekomendasi> createState() => _rekomendasiState();
}

class _rekomendasiState extends State<rekomendasi> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendations'),
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: ListView.builder(
          itemCount: SocialMediaList.length,
          itemBuilder: (context, index) {
            final data list = SocialMediaList[index];
            return Card(
              margin: EdgeInsets.all(16),
              //color: widget.cardColor,
              child: Column(
                children: [
                  Image.network(
                    list.imageUrl,
                    height: 200,
                    width: 200,
                    fit: BoxFit.none,
                  ),
                  ListTile(
                    title: Text(list.title),
                    subtitle: Text('Tap for details'),
                    onTap: () {
                      _launchURL(list.linkUrl);
                    },
                    trailing: IconButton(
                      icon: list.isFavorite
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_border),
                      onPressed: () {
                        // Toggling the favorite state when the icon is tapped
                        setState(() {
                          list.isFavorite = !list.isFavorite;
                        });
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  try {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  } catch (e) {
    print('Error launching URL: $e');
  }
}
