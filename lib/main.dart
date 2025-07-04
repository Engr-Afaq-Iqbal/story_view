// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:story_view/story_view.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Story View Example',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primarySwatch: Colors.green,
//         ),
//         home: Home());
//   }
// }
//
// class Home extends StatelessWidget {
//   final StoryController controller = StoryController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Delicious Ghanaian Meals"),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(
//           8,
//         ),
//         child: ListView(
//           children: <Widget>[
//             Container(
//               height: 300,
//               child: StoryView(
//                 controller: controller,
//                 storyItems: [
//                   StoryItem.text(
//                     title:
//                         "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
//                     backgroundColor: Colors.orange,
//                     roundedTop: true,
//                   ),
//                   // StoryItem.inlineImage(
//                   //   NetworkImage(
//                   //       "https://image.ibb.co/gCZFbx/Banku-and-tilapia.jpg"),
//                   //   caption: Text(
//                   //     "Banku & Tilapia. The food to keep you charged whole day.\n#1 Local food.",
//                   //     style: TextStyle(
//                   //       color: Colors.white,
//                   //       backgroundColor: Colors.black54,
//                   //       fontSize: 17,
//                   //     ),
//                   //   ),
//                   // ),
//                   StoryItem.inlineImage(
//                     url:
//                         "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
//                     controller: controller,
//                     caption: Text(
//                       "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
//                       style: TextStyle(
//                         color: Colors.white,
//                         backgroundColor: Colors.black54,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ),
//                   StoryItem.inlineImage(
//                     url:
//                         "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
//                     controller: controller,
//                     caption: Text(
//                       "Hektas, sektas and skatad",
//                       style: TextStyle(
//                         color: Colors.white,
//                         backgroundColor: Colors.black54,
//                         fontSize: 17,
//                       ),
//                     ),
//                   )
//                 ],
//                 onStoryShow: (storyItem, index) {
//                   print("Showing a story");
//                 },
//                 onComplete: () {
//                   print("Completed a cycle");
//                 },
//                 progressPosition: ProgressPosition.bottom,
//                 repeat: false,
//                 inline: true,
//               ),
//             ),
//             Material(
//               child: InkWell(
//                 onTap: () {
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => MoreStories()));
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius:
//                           BorderRadius.vertical(bottom: Radius.circular(8))),
//                   padding: EdgeInsets.symmetric(vertical: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                       ),
//                       SizedBox(
//                         width: 16,
//                       ),
//                       Text(
//                         "View more stories",
//                         style: TextStyle(fontSize: 16, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MoreStories extends StatefulWidget {
//   @override
//   _MoreStoriesState createState() => _MoreStoriesState();
// }
//
// class _MoreStoriesState extends State<MoreStories> {
//   final storyController = StoryController();
//
//   @override
//   void dispose() {
//     storyController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("More"),
//       ),
//       body: StoryView(
//         storyItems: [
//           StoryItem.text(
//             title: "I guess you'd love to see more of our food. That's great.",
//             backgroundColor: Colors.blue,
//           ),
//           StoryItem.text(
//             title: "Nice!\n\nTap to continue.",
//             backgroundColor: Colors.red,
//             textStyle: TextStyle(
//               fontFamily: 'Dancing',
//               fontSize: 40,
//             ),
//           ),
//           StoryItem.pageImage(
//             url:
//                 "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
//             caption: Text(
//               "Still sampling",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             controller: storyController,
//           ),
//           StoryItem.pageImage(
//               url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
//               caption: Text(
//                 "Working with gifs",
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Colors.white,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               controller: storyController),
//           StoryItem.pageImage(
//             url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
//             caption: Text(
//               "Hello, from the other side",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             controller: storyController,
//           ),
//           StoryItem.pageImage(
//             url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
//             caption: Text(
//               "Hello, from the other side2",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             controller: storyController,
//           ),
//         ],
//         onStoryShow: (storyItem, index) {
//           print("Showing a story");
//         },
//         onComplete: () {
//           print("Completed a cycle");
//         },
//         progressPosition: ProgressPosition.top,
//         repeat: false,
//         controller: storyController,
//       ),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Story View Auto-Play',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(),
    );
  }
}

// Splash screen
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to story page after 2 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => StoryVideoScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "Welcome!",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}

// Story screen with only videos
class StoryVideoScreen extends StatelessWidget {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: StoryView(
        controller: controller,
        storyItems: [
          StoryItem.pageVideo(
            "https://www.pexels.com/video/sea-waves-crashing-the-cliff-coast-6010489",
            controller: controller,
            // caption: Text(
            //   "Big Buck Bunny",
            //   style: TextStyle(color: Colors.white),
            // ),
          ),
          StoryItem.pageVideo(
            "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
            controller: controller,
            caption: Text(
              "Bee example",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        onComplete: () {
          print("Story completed");
          // Optional: Go back or close app
          Navigator.pop(context);
        },
        onStoryShow: (s, i) => print("Showing story $i"),
        repeat: false,
        progressPosition: ProgressPosition.top,
      ),
    );
  }
}
