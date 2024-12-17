import 'package:flutter/material.dart';
import 'package:styling1/widget/popular_food_widget.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Icon(Icons.menu,size: 30,),
        actions: [Container(
          margin: EdgeInsets.only(right: 10),
          child: CircleAvatar(backgroundColor: Color(0XFFEB5757),
          child:Icon(Icons.search_rounded,size:30,color:Colors.white,)),
        )],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 23,top: 50),
            child: Text('Hi Alex',
            style: TextStyle(
              fontSize: 18,
              color: Color(0XFFEB5757),
            ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 23),
            child: Text('Find your Delicious Food',
            style: TextStyle(
              color: Color(0XFF4F4F4F),
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,top:15),
            child: Row(
              children: [
                Image.asset('assets/Food Type 1.png'),
                Image.asset('assets/Food Type 1 (1).png'),
                Image.asset('assets/Food Type 1 (2).png'),

              ],),
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left:23),
            child: Text('Popular',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Color(0XFF4F4F4F),
            ),),
            
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 23,right: 23),
            child: Row(children: [
              PopularFoodWidget(imagePath: 'assets/Pizza 4.png',foodCalories: '44',foodName: 'Melting Cheese',foodPrice: '9.47',),
              SizedBox(width: 15,),
              PopularFoodWidget(foodName: 'Pizza Capricciosa', imagePath: 'assets/Pizza 3.png', foodCalories: '54', foodPrice: '12.55')
            ],),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 98),
            child: MaterialButton(onPressed: () =>{} ,
                    shape: CircleBorder(
                      //borderRadius: BorderRadius.circular(10),
                    ),
                    color:Color(0XFFEB5757),
                    minWidth: 210,
                    height: 65,
                                       
                    child: Text('Menu',
                    style:TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    ),
                    ),
          )
        ],
      ),

    );
  }

}