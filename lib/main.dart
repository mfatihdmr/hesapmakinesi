import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Hesap Makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  late num sayi1, sayi2;
  var sonuc;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: [
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: sayiTopla,
                  child: Text("Topla"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
                ElevatedButton(
                  onPressed: sayiCikar,
                  child: Text("Çıkar"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
                ElevatedButton(
                  onPressed: sayiCarp,
                  child: Text("Çarp"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
                ElevatedButton(
                  onPressed: sayiBol,
                  child: Text("Böl"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
