import 'package:flutter/material.dart';
import 'package:pemrogaman_2/data.dart';

class detailPage extends StatefulWidget {
  // const detailPage({Key? key, required this.SosMed, required this.index})
  //     : super(key: key);

  // final data SosMed;
  // final int index;

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    final favSosMed = SocialMediaList.where((list) => list.isFavorite).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorite Page"),
        ),
        body: favSosMed.isNotEmpty
            ? Container(
                child: ListView.builder(
                  itemCount: favSosMed.length,
                  itemBuilder: (context, index) {
                    final data list = favSosMed[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(51)),
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      list.imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        list.title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        list.linkUrl,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    Image.asset(
                      '../assets/noContent.png',
                      height: 250,
                      width: 250,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Tidak ada daftar favorit!",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ));
  }
}
