import 'package:flutter/material.dart';

class BotaoAnimado extends StatelessWidget {

  late AnimationController controller;
  Animation<double> largura;
  Animation<double> altura;
  Animation<double> opacidade;
  Animation<double> radius;

   BotaoAnimado({Key? key, required this.controller}) :
        largura = Tween<double>(
          begin: 0,
          end: 500
        ).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.5, 1),
        )
        ),
         altura = Tween<double>(
             begin: 0,
             end: 50
         ).animate(CurvedAnimation(
           parent: controller,
           curve: Interval(0.5, 0.7),
         )
         ),
         radius = Tween<double>(
             begin: 0,
             end: 20
         ).animate(CurvedAnimation(
           parent: controller,
           curve: Interval(0.6, 1),
         )
         ),
         opacidade = Tween<double>(
             begin: 0,
             end: 1
         ).animate(CurvedAnimation(
           parent: controller,
           curve: Interval(0.6, 0.8),
         )
         ),
         super(key: key);

  _buildAnimation(BuildContext context, Widget? widget){
    return (context, widget){
      return InkWell(
        onTap: () {},
        child: Container(
          width: largura.value,
          height: altura.value,
          child: Center(
              child: FadeTransition(
                opacity: opacidade,
                child: Text(
                  "Entrar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius.value),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(255, 100, 127, 1),
                Color.fromRGBO(255, 123, 145, 1),
              ])),
        ),
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: this.controller,
        builder: _buildAnimation(context, null),
    );
  }
}
