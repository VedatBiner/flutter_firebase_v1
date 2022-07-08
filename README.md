# flutter_firebase_v1

Burada Firebase ile deneme olarak kendimiz bir CRUD işlem oluşturalım.
Vedat Biner

CRUD Test Adında bir Firebase projemiz olsun.
Userlist adında bir collection aşağıdaki alanları içersin.
![img.png](img.png)

Görünümü

![img_1.png](img_1.png)

Firebase projemizin bulunduğu dizinde 
flutter pub add firebase_database ile yapalım.
![img_2.png](img_2.png)

Bu işlem ile pubspec.yaml dosyası içine   firebase_database: ^9.0.15 ekleniyor.

Android >> app içindeki build.gradle dosyasına aşağıdakileri ekleyelim.
minSdkVersion 25
targetSdkVersion 32

Android altındaki build.gradle dosyası altına

main.dart içine :
import 'package:firebase_database/firebase_database.dart'; 
ekleyelim.

FirebaseDatabase database = FirebaseDatabase.instance; ekleyelim  
<BR>

![ScreenShot](/screen_shots/img-01.png)
![ScreenShot](/screen_shots/img-02.png)


Buradan devam : https://firebase.google.com/docs/database/flutter/start
