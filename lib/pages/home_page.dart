import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  final String Wname;
  const MyHomePage({Key? key, required this.Wname}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var postJson = [];
  @override
  void fetchData() async {
    final response = await http.get(
        Uri.parse(
            'https://exercisedb.p.rapidapi.com/exercises/bodyPart/${this.widget.Wname}'),
        headers: {
          "Content-Type": "application/json",
          'X-RapidAPI-Key':
              '5f506045admsh19d29b93bba57d7p1a7e0djsne0bcbd6bbb86',
          'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com'
        });
    final res = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {
      setState(() {
        postJson = res;
      });
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3C2C3E),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "Fit & Care",
        ),
        centerTitle: true,
        actions: [Icon(Icons.light_mode_rounded)],
      ),
      body: ListView.builder(
          itemCount: postJson.length,
          itemBuilder: (ctx, i) {
            final post = postJson[i];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: ListTile(
                    tileColor: Color(0xFF4C3A51),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: EdgeInsets.all(14),
                    title: Text(
                      "Title : ${post["name"]}",
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    hoverColor: Colors.deepPurple,
                    subtitle: Text(
                      "equipment : ${post["equipment"]}",
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Image.network(
                  post["gifUrl"],
                  width: 350,
                ),
                SizedBox(
                  height: 12,
                )
              ],
            );
          }),
    );
  }
}
