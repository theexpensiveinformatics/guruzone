import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class BottomSheetwidget extends StatelessWidget{
  const BottomSheetwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Bottom Sheet Widget", style: TextStyle(
              color: Colors.white),
          )),
      body: Center(
        child: ElevatedButton(child: const Text("Show Bottom Sheet"),
          onPressed: (){
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)

                ),
                elevation: 0,
                isDismissible: false,
                enableDrag: true,
                context: context,
                builder:( context){
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("*The request will be sent to all mentors.",style: TextStyle(color: Colors.blue),),
                      ),
                      ListTile(
                        title: Text("What do you want to learn?",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "Android App Development"
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "I want to learn Backend in Android App Development"
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Language",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "English"
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("How much you can pay per hour?",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "200"
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Type",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "100% Personalized"
                          ),
                        ),
                      ),


                      ListTile(
                        title: Text("Offline/Online/Both",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "Online"
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("City",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "Vadodara"
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Category",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: TextField(
                          decoration: InputDecoration(
                              hintText: "Select"
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Post Requirement")),

                      )


                    ],);

                });

          },),

      ),


    );
  }

}
