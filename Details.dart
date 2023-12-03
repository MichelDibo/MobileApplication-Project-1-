import 'package:flutter/material.dart';
import 'List_Emergency.dart';

class DetailsPage extends StatefulWidget {
  final List_Emergency selectedEmergency;

  DetailsPage(this.selectedEmergency);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.selectedEmergency.Name,style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [


            SizedBox(height: 20,),
            Container(
          width: 350,height: 350,

          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("${widget.selectedEmergency.Image}"))),

        ),
            SizedBox(height: 20,),
            Text("You Can Reach The ${widget.selectedEmergency.Name} Team at ${widget.selectedEmergency.Number} ",
              style:TextStyle(color: Colors.white,fontSize: 40,backgroundColor: Colors.red,),),

            SizedBox(height: 20,),

            Text(" ${widget.selectedEmergency.Description }",
              style:TextStyle(color: Colors.white,fontSize: 40,backgroundColor: Colors.black87,),
            textAlign: TextAlign.center,
            ),
            // Add more details or widgets as needed
          ],
        ),
      ),
    );
  }
}
