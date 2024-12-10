import 'package:filmleruygulamasi/DetaySayfasi.dart';
import 'package:filmleruygulamasi/FilmlerDao.dart';
import 'package:flutter/material.dart';

import 'Filmler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> goster() async {
    var f=await Filmlerdao();
    var liste=await f.tumFilmler();
    for(Filmler l in liste){
      print("*****************");

    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goster();

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Filmler"),
      ),
      body:Center(
        child: Column(
          children: [

          ],
        ),
      ),

    );
  }
}
