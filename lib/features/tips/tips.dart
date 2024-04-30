import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/core/styles.dart';

class TipsView extends StatelessWidget {
  const TipsView({super.key});

  @override
  Widget build(BuildContext context) {
    var myHeight = MediaQuery.of(context).size.height / 3 ;
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Container(
              height: myHeight *2,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image: AssetImage('asset/logos/food.png') , fit: BoxFit.contain)
              ),
            ),

            Container(
              height: myHeight,
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0,3),
                  ),
                  
                ],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), 
                topRight: Radius.circular(20)
                )
              ),
              child: ListView(
                children:  [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Happy Meals' , style: Styles.style35,),
                        Text('Discover the best foods from over 1,000 resturants.' ,
                        style: Styles.style18 ,
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () {
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text("Get Started" ,
                               style: Styles.style22.copyWith(color: Colors.black, fontWeight: FontWeight.bold
                               ),)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}