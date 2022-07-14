import 'package:flutter/material.dart';
import 'package:flutter_exercise/pages/home_page.dart';

class Category_page extends StatelessWidget {
  Category_page({Key? key}) : super(key: key);

  final body_parts = [
    {
      "name": "upper arms",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "upper legs",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "Back",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "cardio",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "chest",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "lower arms",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "lower legs",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "neck",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    },
    {
      "name": "waist",
      "image": Image.asset("assets/gym.png"),
      "color": const Color(0xff3C2C3E)
    }
  ];
  @override
  Widget build(BuildContext context) {
    List body_parts = [
      {
        "name": "upper arms",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "upper legs",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "Back",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "cardio",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "chest",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "lower arms",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "lower legs",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "neck",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      },
      {
        "name": "waist",
        "image": Image.asset("assets/gym.png"),
        "color": const Color(0xff3C2C3E)
      }
    ];

    return Scaffold(
      backgroundColor: Color(0xff3C2C3E),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(body_parts.length, (index) {
          return Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MyHomePage(Wname: body_parts[index]["name"]),
                    ),
                  );
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/gym.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                body_parts[index]["name"],
                style: TextStyle(color: Colors.white),
              ),
            ]),
          );
        }),
      ),
    );
  }
}
