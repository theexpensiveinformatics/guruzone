import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


// main.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  var controller = TextEditingController();
  String searchQuery = "";
  List<Item> items = [];

  @override
  void initState() {
    super.initState();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://vadodara-hackthon-4-0.vercel.app/api/v1/search/teacher?q=$searchQuery'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final teacherProfiles = data['teacherProfiles'] as List<dynamic>;

        print(data);
        setState(() {
          items = teacherProfiles.map((profile) {

            return Item(
              name: profile['username'],
              role: profile['background'],
              rate: profile['rating'],
              skill_set: profile['skill_set'],
              location:profile['location'],
              language:profile['language'],
              typeOfLearning:profile['type_of_learning'],

            );
          }).toList();
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('ERROR MSG : $e');
    }
  }


  List<Item> getItems() {

    return items;

  }

  @override
  Widget build(BuildContext context) {
    final Items = getItems();
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search Subjects',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),

          ElevatedButton(onPressed: () {
            fetchData();
          }, child: Text('get data')),
          Expanded(
            child: ListView.builder(
              itemCount: Items.length,
              itemBuilder: (context, index) {
                final item = Items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.location),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class Item {
//   final String name;
//   final String role;
//   final int rate;
//   final String location;
//   final String language;
//   final String typeOfLearning;
//   final String skill_set;
//
//
//
//   Item({required this.role, required this.rate, required this.location, required this.language, required this.typeOfLearning, required this.skill_set, required this.name, });
// }


// class Item {
//   final String name;
//   final String role;
//   final int rate;
//   final String location;
//   final String language;
//   final String typeOfLearning;
//
//
//
//
//   Item({required this.role, required this.rate, required this.location, required this.language, required this.typeOfLearning,  required this.name, });
// }


class Item {
  final String name;
  final String role;
  final int rate;
  final String location;
  final String language;
  final String typeOfLearning;
  final List<dynamic> skill_set;

  Item({

    required this.role,
    required this.rate,
    required this.location,
    required this.language,
    required this.typeOfLearning,
    required this.name,
    required this.skill_set
  });
}
