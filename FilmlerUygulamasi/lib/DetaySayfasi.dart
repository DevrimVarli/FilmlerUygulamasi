import 'package:flutter/material.dart';

import 'Filmler.dart';

class DetaySayfasi extends StatefulWidget {
  Filmler film;

  DetaySayfasi({required this.film});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.film.Film_adi}"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("resimler/${widget.film.Film_resim}"),

            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text("${widget.film.Film_fiyat}",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 20)),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                    onPressed: (){
                      print("${widget.film.Film_adi } kiralandı");
                    },
                    child: Text("Kirala"),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
