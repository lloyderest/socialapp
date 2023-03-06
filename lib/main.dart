import "package:flutter/material.dart";
import 'feed_item.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Social App"),
      ),
      body: Column(children: [
        //Section 1. Stories
        Container(
          color: Colors.teal,
          height: 250,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (int i = 0; i < 5; i++) ...[
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber,
                  ),
                  height: 200,
                  width: 125,
                ),
              ]
            ]),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                FeedItem(
                  name: "Isten Gwapo",
                  content:
                      " The whole secret of a successful life is to find out what is one’s destiny to do, and then do it. - Henry Ford",
                  icon:
                      "https://scontent.fdvo3-1.fna.fbcdn.net/v/t1.15752-9/317389238_855473132438106_7580925720963171515_n.jpg?stp=dst-jpg_p1080x2048&_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHkjOE46T9Y19GInye2XRAjwiCxGIUTC4DCILEYhRMLgCo3XwjtRVlv1nUxISuJjokezbWBQDy5A-3TlKKeUjuW&_nc_ohc=Z1slHCZTPosAX8g3l7p&_nc_ht=scontent.fdvo3-1.fna&oh=03_AdRza-zmd-JYHhHQn60d5TQiu1vX6rKuNaaC3DGArXu_dw&oe=642CD3F4",
                ),
                FeedItem(
                  name: "Steven Patton",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/Bd_QOTU3POpPsBehpp2OWrHGQOxSwWinFI_9SFq7v7A/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjI5NTI3LmpwZw.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/RLP8KUWGtVAoWG1ah6u5k_UyCX-jchA5q7eK8FRE7yc/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjczMTc2LmpwZw.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/RLP8KUWGtVAoWG1ah6u5k_UyCX-jchA5q7eK8FRE7yc/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjczMTc2LmpwZw.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/RLP8KUWGtVAoWG1ah6u5k_UyCX-jchA5q7eK8FRE7yc/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjczMTc2LmpwZw.jpg",
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
