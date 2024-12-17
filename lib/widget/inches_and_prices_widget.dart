import 'package:flutter/material.dart';

class InchesAndPricesWidget extends StatelessWidget{
  @override
  Widget build(Object context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //SizedBox(width: 100,),
                      Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                          decoration: BoxDecoration(
                          color:Colors.white,
                          border: Border.all(width:1,color: Colors.grey),
                          borderRadius:BorderRadius.circular(30.0)
                          ),     
                          child:Icon(Icons.circle,color:Colors.white)           
                          ),
                          Row(
                  children: [
                    Text('\$',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF828282),
                    ),),
                    Text('6.44',style:
                    TextStyle(
                      fontSize: 14,
                      color:Color(0XFF828282),
                    ),)
                  ],),
                          Text('8 inch',style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),),
                        ],
                      ),  
                      SizedBox(width: 100,),
                      Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                          decoration: BoxDecoration(
                          color:Color(0XFFEB5757),
                          border: Border.all(width:1,color: Colors.grey),
                          borderRadius:BorderRadius.circular(30.0)
                          ),     
                          //child:Icon(Icons.circle,color:Color(0XFFEB5757),size: 25,)           
                          ),
                          Row(
                  children: [
                    Text('\$',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF828282),
                    ),),
                    Text('9.47',style:
                    TextStyle(
                      fontSize: 14,
                      color:Color(0XFF828282),
                    ),)
                  ],),
                          Text('12 inch',style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),),
                        
                        ],
                      ),  
                      SizedBox(width: 100,),
                      Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                          decoration: BoxDecoration(
                          color:Colors.white,
                          border: Border.all(width:1,color: Colors.grey),
                          borderRadius:BorderRadius.circular(30.0)
                          ),     
                          child:Icon(Icons.circle,color:Colors.white)           
                          ),
                          Row(
                  children: [
                    Text('\$',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF828282),
                    ),),
                    Text('15.32',style:
                    TextStyle(
                      fontSize: 14,
                      color:Color(0XFF828282),
                    ),)
                  ],),
                          Text('16 inch',style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),),
                        
                        ],
                      ),    
                      ],
                  );
  }

}