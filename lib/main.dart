import 'package:flutter/material.dart';

import 'component/carditem.dart';
import 'models/info.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<info> infos =[
    info(
      id: 1,
      title: 'Entertainment',
      description: 'Click this to check out how the news recap feed would look like.',
      image: 'assets/Frame 1000002617.png',
      time: 3,
    ),
    info(
      id: 2,
      title: 'Entertainment',
      description: 'Click this to check out how the news recap feed would look like.',
      image: 'assets/Frame 1000002618.png',
      time: 3,
    ),
    info(
      id: 3,
      title: 'Good Mood',
      description: 'Click this to check out how the news recap feed would look like.',
      image: 'assets/Frame 1000002619.png',
      time: 3,
    ),
    info(
      id: 4,
      title: 'Movie',
      description: 'Click this to check out how the news recap feed would look like.',
      image: 'assets/Rectangle 18291.png',
      time: 3,
    ),
    info(
      id: 5,
      title: 'Cricket',
      description: 'Click this to check out how the news recap feed would look like.',
      image: 'assets/CSK-vs-GT-Dream11-Prediction 1.png',
      time: 3,
    ),
    info(
      id: 6,
      title: 'Entertainment',
      description: 'Click this to check out how the news recap feed would look like.',
      image: 'assets/CSK-vs-GT-Dream11-Prediction 1.png',
      time: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_sharp,),
            //replace with our own icon data.
          ),
        title: const Text("Notification",
              style: TextStyle(
                fontSize:22,
              ),
            ),
        actions:  [
          GestureDetector(
            onTap: () {
              print('hello');
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Text('Read all',
                overflow: TextOverflow.ellipsis, // or TextOverflow.clip
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ),
          ),

        ],

      ),
      
      body:Column(

          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Latest',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                        fontFamily: 'Readex Pro',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  IconButton(onPressed: (){},
                      icon: Image.asset(
                        'assets/Vector.png',
                      )
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(

                itemCount: infos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Carditem(
                      id: infos[index].id,
                      time: infos[index].time,
                      image: infos[index].image,
                      title: infos[index].title,
                      description: infos[index].description,
                      titlecolor: Colors.yellowAccent,
                    press: () {
                        print("hello");
                    },
                  );
                },
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Previous',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                            fontFamily: 'Readex Pro',
                        ),
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
            child: ListView.builder(
            itemCount: infos.length,
            itemBuilder: (BuildContext context, int index) {
            return Carditem(
              id: infos[index].id,
              time: infos[index].time,
              image: infos[index].image,
              title: infos[index].title,
              description: infos[index].description,
              titlecolor: Colors.blueAccent,
                press: () {
                print("hello");
                },
            );
            },
            ),
            ),
          ],
        ),



    );


  }
}


