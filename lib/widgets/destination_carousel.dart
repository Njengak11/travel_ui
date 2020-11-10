import 'package:flutter/material.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    Column(children: [
              Padding(padding: EdgeInsets.symmetric(horizontal:20),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                Text('Top Destinations',
                style: TextStyle( 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),),
                GestureDetector(
                  onTap: () => print('see all'),
                                  child: Text('See All',
                  style: TextStyle( 
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),),
                ),
              ],),
              ),
            ],);
  }
}