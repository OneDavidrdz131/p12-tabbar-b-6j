import 'package:flutter/material.dart';

void main() => runApp(const Miapptabbar());

class Miapptabbar extends StatelessWidget {
  const Miapptabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo tabbar",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: Mipaginainicial(),
    );
  }
}

class Mipaginainicial extends StatefulWidget {
  const Mipaginainicial({Key? key}) : super(key: key);

  @override
  State<Mipaginainicial> createState() => _MipaginainicialState();
}

class _MipaginainicialState extends State<Mipaginainicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Ford Proyecto b David rodriguez "),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.car_repair_outlined),
              ),
              Tab(
                icon: Icon(Icons.car_crash),
              ),
              Tab(
                icon: Icon(Icons.car_repair_rounded),
              ),
              Tab(
                icon: Icon(Icons.car_rental_outlined),
              ),
              Tab(
                icon: Icon(Icons.car_repair_rounded),
              ),
            ] //Texto icono,
                )),
        body: TabBarView(children: const <Widget>[
          Center(
              child: Icon(
            Icons.car_repair_outlined,
            size: 350,
            color: Color(0xff4de91e),
            semanticLabel: 'Text to announce in accessibility modes',
          )),
          Center(
              child: Icon(
            Icons.car_crash,
            size: 350,
            color: Color(0xff205e0d),
            semanticLabel: 'Text to announce in accessibility modes',
          )),
          Center(
              child: Icon(
            Icons.car_repair_rounded,
            size: 350,
            color: Color(0xff1ea9e9),
            semanticLabel: 'Text to announce in accessibility modes',
          )),
          Center(
              child: Icon(
            Icons.car_rental_outlined,
            size: 350,
            color: Color(0xffd04708),
            semanticLabel: 'Text to announce in accessibility modes',
          )),
          Center(
              child: Icon(
            Icons.car_repair_rounded,
            size: 350,
            color: Color(0xff0040b7),
            semanticLabel: 'Text to announce in accessibility modes',
          )),
        ]),
      ),
    );
  }
}
