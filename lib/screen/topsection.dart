import 'package:flutter/material.dart';

List stories = [
  {
    "name": "Einstein",
    "imageUrl": "imag/einstein.png",
    "isOnline": true,
    "hasStory": false
  },
  {
    "name": "Dirac",
    "imageUrl": "imag/dirac.png",
    "isOnline": true,
    "hasStory": false
  },
  {
    "name": "Madam Curie",
    "imageUrl": "imag/madam.png",
    "isOnline": true,
    "hasStory": false
  },
  {
    "name": "Neils Bohr's",
    "imageUrl": "imag/bohr.png",
    "isOnline": true,
    "hasStory": true
  },
  {
    "name": "Nikola Tesla",
    "imageUrl": "imag/tesla.png",
    "isOnline": true,
    "hasStory": false
  },
  {
    "name": "Hawking",
    "imageUrl": "imag/hawking.png",
    "isOnline": true,
    "hasStory": true
  },
  {
    "name": "Kelvin",
    "imageUrl": "imag/kelvin.png",
    "isOnline": true,
    "hasStory": true
  },
  {
    "name": "Heisenberg",
    "imageUrl": "imag/heisenberg.png",
    "isOnline": true,
    "hasStory": true
  }
];

mystories() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.zero),
        Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 228, 228, 228),
                ),
                child: InkWell(
                  onTap: (() {}),
                  child: Center(
                      child: Icon(
                    Icons.video_call,
                    size: 30,
                  )),
                )),
            SizedBox(height: 5),
            SizedBox(
                width: 76,
                child: Align(
                  child: Center(
                      child:
                          Text("Make Video Call", overflow: TextOverflow.clip)),
                ))
          ],
        ),
        Row(
            children: List.generate(stories.length, (index) {
          return Padding(
              padding: EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Container(
                    height: 95,
                    width: 65,
                    child: Stack(children: [
                      Column(
                        children: [
                          Container(
                              height: 60,
                              width: 60,
                              child: InkWell(
                                  splashColor: Colors.blueAccent,
                                  onTap: () {},
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              stories[index]['imageUrl'],
                                            ),
                                            fit: BoxFit.cover)),
                                  ))),
                          SizedBox(
                              height: 30,
                              child: Text(
                                stories[index]['name'],
                                overflow: TextOverflow.visible,
                              ))
                        ],
                      ),
                      Positioned(
                          top: 40,
                          left: 45,
                          height: 25,
                          width: 15,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                          ))
                    ]),
                  )
                ],
              ));
        }))
      ],
    ),
  );
}
