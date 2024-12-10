import 'package:filmleruygulamasi/Filmler.dart';
import 'package:filmleruygulamasi/Kategoriler.dart';
import 'package:filmleruygulamasi/VeritabaniYardimcisi.dart';
import 'package:filmleruygulamasi/Yonetmenler.dart';

class Filmlerdao{

  Future<List<Filmler>> tumFilmler() async{
    var db=await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps = await  db.rawQuery("SELECT * FROM Filmler,Kategoriler,Yonetmenler  WHERE Filmler.kategori_id= Kategoriler.kategori_id AND Filmler.yonetmen_id= Yonetmenler.yonetmen_id");
    return List.generate(maps.length, (i) {
      var satir=maps[i];
      var k=Kategoriler(satir["kategori_id"], satir["kategori_ad"]);
      var y=Yonetmenler(satir["yonetmen_id"], satir["yonetmen_ad"]);
      var f=Filmler(satir["film_id"], satir["film_ad"], satir["film_yil"], satir["film_resim"], k, y);
      return  f;
    });
  }
}