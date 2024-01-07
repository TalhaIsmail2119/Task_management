

// import 'package:day26/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:work_1/widget/common_widget.dart';

class MyTask extends StatelessWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12,top: 4,bottom: 4),
          child: CircleAvatar(maxRadius: 15,
          backgroundColor: Colors.grey,
          ),
          
        ),
        title: Row(
          children: [
            Text("Team Ismail",style: myStyle(16,textClrLight),),
            Icon(Icons.keyboard_arrow_down_sharp)
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("project Task",style: myStyle(16,textClrLight),),

            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  taskCard(
                    clr: Colors.purple,
                    value: "5",
                    title: "Ongoing"
                  ),taskCard(
                    clr: Colors.red,
                    value: "7",
                    title: "Under\nReview"
                  ),taskCard(
                    clr: Colors.teal,
                    value: "7",
                    title: "Uncommon"
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text("My Task",style: myStyle(16,textClrLight),),
            ),

          ],
        ),
      ),
    );
  }

  Container taskCard({String ?value, String ?title,Color ?clr}) {
    return Container(
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: cardClr
                  ),
                  height: 60,width: 130,
                  child:Row(
                    children: [
                      Container(
                        width: 4,
                        height:32 ,
                        color: clr,
                      ),

                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("$value",style: myStyle(16,textClrLight),),
                          SizedBox(width: 8,),
                          Text("$title",style: myStyle(16,textClrLight),),
                        ],
                      ))
                    ],
                  ) ,
                );
  }
}
