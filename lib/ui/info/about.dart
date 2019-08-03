import 'package:fdb/utils/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                child: Text(
                  "About Me",
                  style: TextStyle(
                    color: Color(0xFF274D85),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.transparent,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/mt.jpg",
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () async{
                        if(await canLaunch("https://www.instagram.com/arabi_ishaque/")){
                          await launch("https://www.instagram.com/arabi_ishaque/");
                        }
                      },
                      icon: Icon(
                        MyFlutterApp.instagram,
                        size: 45.0,
                        color: Color(0xff3f729b),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    IconButton(
                      onPressed: () async{
                        if(await canLaunch("https://www.youtube.com/channel/UCwRoGFEW3gOQUkB1UnnYm9w")){
                          await launch("https://www.youtube.com/channel/UCwRoGFEW3gOQUkB1UnnYm9w");
                        }
                      },
                      icon: Icon(
                        MyFlutterApp.youtube_play,
                        size: 45.0,
                        color: Color(0xffc4302b),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    IconButton(
                      onPressed: () async{
                        if(await canLaunch("https://twitter.com/ArabiIshaque")){
                          await launch("https://twitter.com/ArabiIshaque");
                        }
                      },
                      icon: Icon(
                        MyFlutterApp.twitter,
                        size: 45.0,
                        color: Color(0xff00acee),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "I am Arabi Ishaque a student, developer and designer.\n\nFrom the childhood I have used computers. After 10th I grew up interest in UI/UX designing. I wondered how all that stuff works and I started learning these things.\n\nAfter 12th I took admission in an University and currently I am pursuing the software engineering course.\n\nApart from this course I have learned graphic designing, illustrations, editing UI/UX from other sources. I am curious to learn everything about computers and I love to design stuffs related to computers.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff121212),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}