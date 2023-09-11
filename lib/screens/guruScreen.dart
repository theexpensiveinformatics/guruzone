
import 'package:flutter/material.dart';
import 'package:guruzone/screens/postList.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';

final GlobalKey<ScaffoldState> _scaffoldKey =GlobalKey<ScaffoldState>();

class guruScreen extends StatefulWidget {
  const guruScreen({super.key});

  @override
  State<guruScreen> createState() => _guruScreenState();
}

class _guruScreenState extends State<guruScreen> {

  TextEditingController _topic = TextEditingController();
  TextEditingController _desc = TextEditingController();
  TextEditingController _lang = TextEditingController();
  TextEditingController _amount = TextEditingController();
  TextEditingController _type= TextEditingController();
  TextEditingController _platform = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _category = TextEditingController();



  List<PostList> postlists =List.empty(growable: true);

  int selectedIndex= -1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Row(
        children: [
          Text("Post Requiremnets"),
          SizedBox(width:70.0),
          ElevatedButton(
            onPressed: (){
              String topic = _topic.text.trim();
              String desc = _desc.text.trim();
              String lang = _lang.text.trim();
              String amount = _amount.text.trim();
              String type= _type.text.trim();
              String platform = _platform.text.trim();
              String city = _city.text.trim();
              String category = _category.text.trim();
              if(topic.isNotEmpty && desc.isNotEmpty && lang.isNotEmpty && amount.isNotEmpty && type.isNotEmpty && platform.isNotEmpty && city.isNotEmpty && category.isNotEmpty)
              {

                setState(() {


                  _topic.text="";
                  _desc.text="";
                  _lang.text="";
                  _amount.text="";
                  _type.text="";
                  _platform.text="";
                  _city.text="";
                  _category.text="";
                  postlists[selectedIndex].topic=topic;
                  postlists[selectedIndex].desc=desc;
                  postlists[selectedIndex].lang=lang;
                  postlists[selectedIndex].amount=amount;
                  postlists[selectedIndex].type=type;
                  postlists[selectedIndex].platform=platform;
                  postlists[selectedIndex].city=city;
                  postlists[selectedIndex].category=category;
                  selectedIndex = -1;


                });
              }


            },
            child: const Text("Update"),
          ),
        ],
      ), ),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Center(
            child: Container(
                height: 200,
                width: 300,
                decoration: backgroundWhite,child: Column(
                  children: [
                    Image.asset('assets/images/img.png',height: 130),
                    Center(child: TextButton(

              child: Text("Post Requirement for Guru",style: TextStyle(color: Colors.grey),),
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
                          return SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 700,
                                child: SingleChildScrollView(
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          title: Text("*The request will be sent to all mentors.",style: TextStyle(color: Colors.blue),),
                                        ),
                                        ListTile(
                                          title: Text("What do you want to learn?",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                          controller: _topic,
                                            decoration: InputDecoration(
                                              hintText: "Android App Development",
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                  )
                                                ),

                                            ),

                                          ),
                                        ),
                                        ListTile(
                                          title: Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                            controller: _desc,
                                            maxLength: 200,
                                            decoration: InputDecoration(
                                                hintText: "I want to learn Backend in Android App Development",
                                                border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text("Language",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                            controller: _lang,
                                            decoration: InputDecoration(
                                                hintText: "English",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text("How much you can pay per hour?",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                            controller: _amount,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                hintText: "200",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text("Type",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                            controller: _type,
                                            decoration: InputDecoration(
                                                hintText: "100% Personalized",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),


                                        ListTile(
                                          title: Text("Offline/Online/Both",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                            controller: _platform,
                                            decoration: InputDecoration(
                                                hintText: "Online",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text("City",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                            controller: _city,

                                            decoration: InputDecoration(
                                                hintText: "Vadodara",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text("Category",style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: TextField(
                                            controller: _category,

                                            decoration: InputDecoration(
                                                hintText: "Select",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: ElevatedButton(onPressed: (){
                                            String topic= _topic.text.trim();
                                            String desc= _desc.text.trim();
                                            String lang= _lang.text.trim();
                                            String amount= _amount.text.trim();
                                            String type= _type.text.trim();
                                            String platform= _platform.text.trim();
                                            String city= _city.text.trim();
                                            String category= _category.text.trim();

                                            if(topic.isNotEmpty && desc.isNotEmpty && lang.isNotEmpty && amount.isNotEmpty && type.isNotEmpty && platform.isNotEmpty && city.isNotEmpty && category.isNotEmpty)
                                            {

                                              setState(() {

                                                _topic.text="";
                                                _desc.text="";
                                                _lang.text="";
                                                _amount.text="";
                                                _type.text="";
                                                _platform.text="";
                                                _city.text="";
                                                _category.text="";
                                                postlists.add(PostList(topic: topic, desc: desc, lang: lang, amount: amount, type: type, platform: platform, city: city, category: category));
                                              });
                                            }

                                            Navigator.of(context).pop();
                                          }, child: Text("Post Requirement")),

                                        )


                                      ],),
                                  ),
                                ),
                              ),
                            ),
                          );

                        });

              },),

            ),
                  ],
                )),

          ),
          postlists.isEmpty ? Text("No Posted Requiremnets yet...", style: TextStyle(fontSize: 22),)
          : Expanded(
            child: ListView.builder(
              itemCount: postlists.length,
                itemBuilder: (context, index) => getRow(index)
                ),
          )
        ],
      ));
  }

 Widget getRow(int index) {
  return Card(
    child: ListTile(

      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Text(postlists[index].topic, style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20)),
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    InkWell(
                      onTap: (){

                        _topic.text =postlists[index].topic;
                        _desc.text =postlists[index].desc;
                        _lang.text =postlists[index].lang;
                        _amount.text =postlists[index].amount;
                        _type.text =postlists[index].type;
                        _platform.text =postlists[index].platform;
                        _city.text =postlists[index].city;
                        _category.text =postlists[index].category;

                        setState(() {
                          selectedIndex =index;
                        });




                      },

                        child: const Icon(Icons.edit)),
                    SizedBox(width: 20.0),
                    InkWell(
                      onTap: (){

                        setState(() {
                          postlists.removeAt(index);
                        });

                      },

                        child:  const Icon(Icons.delete)),
                ],
          ),


          Text(postlists[index].desc),
          Text("*This request will be sent to all All Mentors", style: TextStyle(color: Colors.blue),),
          Text(postlists[index].lang),
          Text(postlists[index].amount),
          Text(postlists[index].type),
          Text(postlists[index].platform),
          Text(postlists[index].city),
          Text(postlists[index].category),
        ],

    ),
          ),
    );


 }
}
