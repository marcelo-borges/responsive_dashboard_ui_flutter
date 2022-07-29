import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_dashboard_ui/constants.dart';
import 'package:responsive_dashboard_ui/util/my_box.dart';
import 'package:responsive_dashboard_ui/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body:Column(
        children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: // 4 box on the top
              GridView.builder(
                itemCount: 4,
                gridDelegate: 
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),  
                  itemBuilder: (context, index){
                    return const MyBox();
                  },
              ),
              // tiles below it
          ),       
        ),

        Expanded(child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
          return MyTile();
         },
        ),)
      ],
      ),
    );
  }
}