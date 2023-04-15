import 'package:bario_bet/Vista/movil/homeMovil.dart';
import 'package:flutter/cupertino.dart';

import 'Web/homeWeb.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    int tipoPantalla = 0;
    if(MediaQuery.of(context).size.width <= 768){
      return HomeMovil();
    }
    return HomeWeb();
  }
}