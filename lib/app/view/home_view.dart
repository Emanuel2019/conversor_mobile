import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(height: 100,),
        Image.asset('assets/images/43777_produto.png',height: 200,width: 200,),
       Row(
        children: [
          DropdownButton(items: [], onChanged: ((value) {
            
          }),
          )

        ],
       )
      ]),
    );
  }
}