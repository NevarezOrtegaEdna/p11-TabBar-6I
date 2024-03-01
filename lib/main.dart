import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatefulWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  State<AppMiTabBar> createState() => _AppMiTabBarState();
}

class _AppMiTabBarState extends State<AppMiTabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Edna Nevarez",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MiPaginaInicial(),
    );
  }
}
//Stateful

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          //DefaultTabController
          appBar: AppBar(
            title: const Text("TabBar Edna Nevarez"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Casas",
                  icon: Icon(Icons.cottage_rounded),
                ),
                Tab(
                  text: "Ofertas",
                  icon: Icon(Icons.currency_exchange_rounded),
                ),
                Tab(
                  text: "Favoritos",
                  icon: Icon(Icons.favorite_rounded),
                ),
                Tab(
                  text: "Cuentas",
                  icon: Icon(Icons.account_circle_rounded),
                ),
              ], //Fin de tabs
            ), //Fin buttom tabBar
          ),
          body: TabBarView(children: const <Widget>[
            Center(
              child: Text(
                "Casas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Center(
              child: Text(
                "Ofertas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Center(
              child: Text(
                "Favoritos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Center(
              child: Text(
                "Cuentas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
          ] //Jardin de niños
              ), //Fin tabBarView
        ));
  } //fin widget
} //_MiPaginaInicialState
