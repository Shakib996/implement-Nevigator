import 'package:flutter/material.dart';
import 'secend.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1c40f),
      body: SafeArea(
        child:Stack(
          children: [
            Image(
              image: NetworkImage('https://images.pexels.com/photos/275033/pexels-photo-275033.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 20,left: 20,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.black,
                        Colors.orange,
                        Colors.purple,
                        Colors.red,
                        Colors.yellow,
                        Colors.green,
                        Colors.amber,
                      ]
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      '10 Amazing colorful photography',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    ),
                    Row(
                      children: [
                        ActionChip(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Secend()));
                          },
                          label: Text('Photography',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),),
                          backgroundColor: Colors.red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ActionChip(
                          onPressed: (){},
                          label: Text('Color',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),),
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

