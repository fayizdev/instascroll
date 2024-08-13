import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "name": "fayiz",
        "dp": "https://picsum.photos/200/301",
        "bg": "https://picsum.photos/200/302"
      },
      {
        "name": "john",
        "dp": "https://picsum.photos/200/325",
        "bg": "https://picsum.photos/200/302"
      },
      {
        "name": "alice",
        "dp": "https://picsum.photos/200/303",
        "bg": "https://picsum.photos/200/304"
      },
      {
        "name": "bob",
        "dp": "https://picsum.photos/200/305",
        "bg": "https://picsum.photos/200/306"
      },
      {
        "name": "eve",
        "dp": "https://picsum.photos/200/307",
        "bg": "https://picsum.photos/200/308"
      },
      {
        "name": "mike",
        "dp": "https://picsum.photos/200/309",
        "bg": "https://picsum.photos/200/310"
      },
      {
        "name": "sophia",
        "dp": "https://picsum.photos/200/311",
        "bg": "https://picsum.photos/200/312"
      },
      {
        "name": "oliver",
        "dp": "https://picsum.photos/200/313",
        "bg": "https://picsum.photos/200/314"
      },
      {
        "name": "lily",
        "dp": "https://picsum.photos/200/315",
        "bg": "https://picsum.photos/200/316"
      },
      {
        "name": "noah",
        "dp": "https://picsum.photos/200/317",
        "bg": "https://picsum.photos/200/318"
      }
    ];

    List profileImage = [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/301",
      "https://picsum.photos/200/302",
      "https://picsum.photos/200/303",
      "https://picsum.photos/200/304",
    ];
    List imageview = [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/301",
      "https://picsum.photos/200/302",
      "https://picsum.photos/200/303",
      "https://picsum.photos/200/304",
    ];
    List names = ["amal", "sajal", "dinu", "clince", "anoob"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(myDataList[index]["bg"]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Divider(thickness: 2, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage(myDataList[index]["dp"]),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(myDataList[index]["name"],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Today, 9:30 pm",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1)),
                            child: Center(
                                child: Text(
                              "Message",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(Icons.favorite_border_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(Icons.send),
                      )
                    ],
                  )
                ],
              )),
          itemCount: myDataList.length,
        ),
      ),
    );
  }
}
