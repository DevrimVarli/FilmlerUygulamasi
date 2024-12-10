import 'package:filmleruygulamasi/Kategoriler.dart';
import 'package:filmleruygulamasi/Yonetmenler.dart';

class Filmler{
  int Film_id;
  String Film_adi;
  int film_yil;
  String Film_resim;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(this.Film_id, this.Film_adi, this.film_yil, this.Film_resim,
      this.kategori, this.yonetmen);
}