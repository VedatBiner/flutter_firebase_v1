// Ekran tasarımı
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ButtonStyle style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
    return MaterialApp(
      title: "Bilgi Girişi",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          title: const Text("Kullanıcı Bilgileri"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Adı",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width:2.0,
                          ),
                        ),
                      ),
                      onChanged: (String urunAdi){
                        //urunAdiAdiAl(urunAdi);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Soyadı",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width:2.0,
                          ),
                        ),
                      ),
                      onChanged: (String urunIdsi){
                        // urunIdsiAl(urunIdsi);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Mail Adresi",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width:2.0,
                          ),
                        ),
                      ),
                      onChanged: (String urunKategorisi){
                       // UrunKategorisiAl(urunKategorisi);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent,
                            onPrimary: Colors.black,
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.add),
                              Text("Ekle"),
                            ],
                          ),
                          onPressed: () {
                              // veriEkle();
                            },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            onPrimary: Colors.black,
                          ),
                          child: Row(
                            children:  const [
                              Icon(Icons.book),
                              Text("Oku"),
                            ],
                          ),
                          onPressed: () {
                            // veriOku();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellowAccent,
                            onPrimary: Colors.black,
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.update),
                              Text("Güncelle"),
                            ],
                          ),
                          onPressed: () {
                            // veriGuncelle();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent,
                            onPrimary: Colors.black,
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.delete),
                              Text("Sil"),
                            ],
                          ),
                          onPressed: () {
                            // veriSil();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
