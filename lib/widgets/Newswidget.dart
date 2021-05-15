import 'package:flutter/material.dart';
import 'package:newsapi/models/news.dart';
import 'package:newsapi/webview_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Newswidget extends StatelessWidget {
  final News news;
  Newswidget({@required this.news});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return FlatButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Webviewscreen(news.url)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 10),
        height: height / 7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                height: ((height / 7) / 3),
                child: Text(
                  news.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  // softWrap: false,
                  style: TextStyle(
                      fontSize: (height / 7) / 7, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              child: Container(
                height: (height / 7) / 3,
                child: Text(
                  news.userid,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  // softWrap: false,
                  style:
                      TextStyle(fontSize: (height / 7) / 7, color: Colors.grey),
                ),
              ),
            ),
            // Spacer(),
            Container(
              height: (height / 7) / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    color: Colors.grey,
                  ),
                  // Container(
                  //   child: Text(
                  //     DateTime.now().toString(),
                  //     style: TextStyle(
                  //         color: Colors.grey, fontWeight: FontWeight.w500),
                  //   ),
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  // ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'Hubble News',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        color: Colors.orange[800],
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.bookmark_border_sharp),
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
