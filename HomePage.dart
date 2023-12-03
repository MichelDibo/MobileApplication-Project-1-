import 'package:flutter/material.dart';
import 'Details.dart';
import 'List_Emergency.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List_Emergency? selectedEmergency; // Default selection

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a Lebanese Emergency Service",style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),


      body: Center(

        child:
        Container(
          width: 5000,height: 5000,

          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1612642132744-cc0e7c59cbae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),

          child: Column(
            children: [


              //Text("Select a Lebanese Emergency Service ",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 15 ,width: 50,),

              Container(
                decoration: BoxDecoration(),
                width: 270,height:55,
                child: DropdownButtonFormField<List_Emergency>(
                  value: selectedEmergency,
                  items: emergencyList.map((List_Emergency emergency) {
                    return DropdownMenuItem<List_Emergency>(
                      value: emergency,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          emergency.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (List_Emergency? newValue) {
                    setState(() {
                      selectedEmergency = newValue!;
                    });Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(selectedEmergency!),
                    ),
                   );

                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.red,
                    hintText: 'Ex: Police',
                    hintStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  dropdownColor: Colors.red, // Background color of the dropdown
                  style: TextStyle(color: Colors.white), // Text color of the selected item
                  icon: Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}