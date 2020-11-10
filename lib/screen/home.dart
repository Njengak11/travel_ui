import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/widgets/destination_carousel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon (int index){ 
    return GestureDetector(
      onTap: (){ 
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
          child: Container( 
        height: 60,
        width: 60,
        decoration: BoxDecoration( 
          color: _selectedIndex == index ? Theme.of(context).accentColor : 
          Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0)
        ),
        child: Icon(_icons[index], size: 25.0, color: _selectedIndex == index ?  Theme.of(context).primaryColor :
        Color(0xFFB4C1C4),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: ListView(
          padding: EdgeInsets.symmetric(vertical:30),
          children: [
            Padding( 
              padding: EdgeInsets.only(left: 20, right: 120),
              child:Text('where would you like to go?',
            style: TextStyle( 
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: 
              _icons.asMap().entries.map(
                (MapEntry map) => _buildIcon(map.key)
              )
              .toList()
            ),
            SizedBox(height: 20,),
         DestinationCarousel(),
        ],),
      ),
    );
  }
}