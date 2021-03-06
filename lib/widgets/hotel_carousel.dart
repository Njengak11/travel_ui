import 'package:flutter/material.dart';
import 'package:travel_ui/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
              Padding(padding: EdgeInsets.symmetric(horizontal:20),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                Text('Top Hotels',
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
              Container( 
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotels.length,
                  itemBuilder: (BuildContext context, int index){ 
                    Hotel hotel = hotels[index];
                    return  Container( 
                      margin: EdgeInsets.all(10),
                      width: 240,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                        Positioned(
                          bottom:0.0,
                         child: Container( 
                           width: 240,
                           height: 120,
                           decoration: BoxDecoration( 
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                               Text(hotel.name,
                               style: TextStyle(
                                 fontSize: 22,
                                 fontWeight: FontWeight.w600,
                                 letterSpacing: 1.2,
                               ),),
                               SizedBox(height: 2,),
                               Text(hotel.address, style: TextStyle(
                                 color: Colors.grey
                               )),
                               
                               Text('\$${hotel.price}/night',
                               style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.w600
                               ),)
                             ],),
                           ),
                          ),
                        ),
                        Container( 
                          decoration: BoxDecoration( 
                             color: Colors.white,
                          borderRadius:BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:Colors.black26,
                              offset: Offset(0.0,2.0),
                              blurRadius: 6.0,
                             )
                            
                          ]
                          ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(20),
                             child: Image(
                             height: 180,
                             width: 220,
                             image: AssetImage(hotel.imageUrl),
                             fit: BoxFit.cover,
                           ),
                         ),
                        )
                      ],),
                    );
                  }
                  ),
              )
            ],);
  }
}