import 'package:flutter/material.dart';
import 'package:styling1/item_page.dart';

class PopularFoodWidget extends StatelessWidget{
  String foodName;
  String imagePath;
  String foodCalories;
  String foodPrice;
  PopularFoodWidget({required this.foodName,required this.imagePath, required this.foodCalories,required this.foodPrice});
  @override
  Widget build(BuildContext context) {
    return Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 170,
                    height: 250,
                     decoration: BoxDecoration(
                      color:Colors.white,
                      border: Border.all(color:Color.fromARGB(255, 220, 214, 214),width: 1.0),
                      borderRadius:BorderRadius.circular(10.0)
                      ),
                  ),
                Column(
                  children: [
                  Container(
                    margin: EdgeInsets.only(top:10),
                    child: Text(foodName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                   SizedBox(height: 5,),
                  Row(
                    children: [
                      Image.asset('assets/Emoji.png'),
                      SizedBox(width: 5,),
                      Text(foodCalories,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFFEB5757),
                      ),),
          
                    ],

                  ),
                  SizedBox(height: 10,),
                  Container(
                        margin: EdgeInsets.only(left:0,top:10),
                        width: 100,
                        height: 100,
                        child: Image.asset(imagePath)),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text('\$',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFEB5757),
                    ),),
                    SizedBox(width: 5,),
                    Text(foodPrice,style:
                    TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color:Color(0XFF4F4F4F),
                    ),)
                  ],),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ItemPage()),);
                    },
                    child: Icon(Icons.add_box_rounded,color: Color(0XFFEB5757),)) ,
                ],)
                ],
                
              );
  }

}