import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/boxTextInput.dart';
import 'package:guruzone/styles/backgrounds/choiceEnable.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/searchScreenCard.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h1.dart';



class newSearchScreen extends StatefulWidget{
  @override
  State<newSearchScreen> createState() => _newSearchScreenState();
}

class _newSearchScreenState extends State<newSearchScreen> {

  bool showSearch =false;
  var cardData = [
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'personalization' : '100% Personalized',
      'price' : 5,

    },
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'personalization' : '100% Personalized',
      'price' : 5,

    },
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'personalization' : '100% Personalized',
      'price' : 5,

    },
  ];

  List<String> skills = ['Flutter','Android','Java','M.L.','Node.js','Politics','Philosophy','Machine Learning'];

  var SearchHeight = 50.0;

  var filterTags = ['All','Flutter','Android','Ui/Ux','Politics','Philosophy','Machine Learning'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Column(
          children: [
            Container(
              width: double.infinity,

              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:25.0,left: 15.0,right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width/10,
                              height: MediaQuery.sizeOf(context).width/10,
                              decoration: boxTextInput,
                              child: Icon(Icons.keyboard_backspace_rounded,size: MediaQuery.sizeOf(context).width/18,color: lightText,),
                            ),

                            Container(
                                child: Text(
                                  'Search Your Guru',
                                  style: h1
                                )
                            ),
                            InkWell(
                              onTap: ()
                              {
                                setState(() {
                                  if(showSearch==false)
                                    {
                                      showSearch=true;
                                    }else
                                      {

                                        showSearch=false;
                                        print(showSearch);
                                      }


                                });
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width/10,
                                height: MediaQuery.sizeOf(context).width/10,
                                decoration: boxTextInput,
                                child: Icon(Icons.search_rounded,size: MediaQuery.sizeOf(context).width/18,color: lightText,),
                              ),
                            ),

                          ],
                        )
                    ),
                    SizedBox(height: showSearch == true ? 10 : 0,),


                    Container(
                      height: showSearch== true ? SearchHeight : 0,
                      width: double.infinity,
                      decoration: backgroundWhite,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SearchHeight,
                            width: SearchHeight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.asset('assets/images/guru.png'),
                                ),
                              ),
                            ),
                          ),
                          Container(

                            width: MediaQuery.of(context).size.width/2,

                            child: Text('Send Request to all mentors',
                              style: d1Light,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Container(
                              height: double.infinity,
                              width: 42,
                              margin: EdgeInsets.only(right: 3,top: 3,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Color(0xff0095FF),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(Icons.arrow_circle_right_outlined,color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: showSearch == true ? 10 : 0 ,),
                    Container(
                      height: showSearch== true ? SearchHeight : 0,
                      width: double.infinity,
                      decoration: backgroundWhite,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SearchHeight,
                            width: SearchHeight,
                            alignment: Alignment.center,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.asset('assets/images/search.png',cacheHeight: 20),
                              ),
                            ),
                          ),
                          Container(

                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width/2,
                            child: TextField(
                              style: d1,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Mentors, skills , etc',
                                  hintStyle: d1Light
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Container(
                              height: double.infinity,
                              width: 42,
                              margin: EdgeInsets.only(right: 3,top: 3,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Color(0xff0095FF),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Image.asset('assets/images/setting.png',color: Colors.white,cacheWidth: 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),


                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 25),
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: filterTags.length,
                  itemBuilder: (BuildContext context,int index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Container(

                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,right: 15,left: 15),
                          child: Text(filterTags[index],style: d1,),
                        )),
                        decoration: boxTextInput
                      ),
                    );
                  }),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: SingleChildScrollView(

                
                child: ListView(

                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: cardData.map((e) => searchScreenCard(name: e['name'].toString(),
                        profession: e['profession'].toString(),
                        ratings: e['ratings'].toString(),
                        reviewCount: e['reviewCount'].toString(),
                        location: e['location'].toString(),
                        linkin: e['linkin'].toString(),
                        language: e['language'].toString(),
                        personalization: e['personalization'].toString(),
                        price: e['price'].toString(),
                        skills: skills)
                    ).toList()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}