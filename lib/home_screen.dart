import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/app_images.dart';
import 'package:youtube_clone/screens/SearchScreen.dart';
import 'package:youtube_clone/screens/popup_menu.dart';
import 'package:youtube_clone/video_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  List image=[
    AppImages.one,
    AppImages.two,
    AppImages.three,
    AppImages.four,
    AppImages.five,
    AppImages.six,
    AppImages.seven,
  ];

  List titles=[
    'Baby Baji Episode 41 | 6th july 2023 | ARY \nDigital Drama',
    'Horrid Henry New Episode In Hindi 2021 | \nHorrid Henry And The Tongue Twisters',
    'What is Flutter? & How it is Better than \nit Counterparts? - Cross  Platform ',
    'ITNY ZIADA BAGS 😱 | Most Expensive\n 😅 | Sistrology Bags ',
    'Dagh e Dil - 2nd Last Ep 31 - Asad Siddiqui\nNawal Saeed, Goher Mumtaz',
    'The Kapil Sharma Show Season 2-Deepika\nदी कपिल शर्मा शो',
    'Baby Baji Episode 41 | 6th july 2023 | ARY \nDigital Drama',
  ];

  List subtitles=[
    'ARY Digital HD . 2.1M views . 5 hours ago',
    'Henry Cartoon HD . 2k views . 1 year ago'
    'Flutter HD . 72k views . 1 year ago'
    'Sistrology HD . 92k views . 1 year ago'
    'Hum TV HD . 1.1M views . 1 year ago'
    'Set India HD . 22k viewss . 1 year ago'
        'ARY Digital HD . 2.1M views . 5 hours ago',

  ];

  List<Color> colors=[
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.orange,
    Colors.green,
    Colors.amber,
    Colors.brown,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.play_circle_filled,color: Colors.red,),
        title: Container(alignment: Alignment.bottomCenter,child: Text('Youtube',style: TextStyle(color: Colors.black),)),
        actions: [

          IconButton( visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
            icon: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Icon(Icons.cast,color: Colors.black,),
          ),
              onPressed: (){}, ),

          PopUpMenu(menuList: [
            PopupMenuItem(child: Text('notification'))
          ],myIcon: Icon(Icons.notifications_active_outlined,color: Colors.black,),),

          IconButton( visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
            icon: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Icon(Icons.search,color: Colors.black,),
            ),
            onPressed: (){}, ),

          PopUpMenu(menuList: [
            PopupMenuItem(child: Text('Your Channel')),
            PopupMenuItem(child: Text('Add Account')),
            PopupMenuItem(child: Text('Setting')),
            PopupMenuItem(child: Text('help')),
          ],
            myIcon:CircleAvatar(radius: 15,backgroundColor: Colors.pink,child: Text('I'),),),
          SizedBox(width: 8,)
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.playlist_add_circle_outlined),label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline),label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.subscriptions_sharp),label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),label: ''),
      // ],),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              itemCount: image.length,
              itemBuilder: (context,index){
                return Center(
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(image[index]),
                        SizedBox(height: 5,),
                      Row(
                        children: [
                          SizedBox(width: 4,),
                          CircleAvatar(radius:18,backgroundColor: colors[index],),
                          SizedBox(width: 15,),
                          Text(titles[index]),
                          SizedBox(width: 15,),
                          Icon(Icons.more_vert)
                        ],
                      ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
