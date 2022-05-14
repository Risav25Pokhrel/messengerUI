import 'package:flutter/material.dart';

List conversation = [
  {
    "name": "Newton",
    "imageUrl": "imag/newton.png",
    "isOnline": false,
    "hasStory": false,
    "iswatched": false,
    "message": "Believe me!! That Apple was tasty",
    "time": "5:00 pm"
  },
  {
    "name": "Einstein",
    "imageUrl": "imag/einstein.png",
    "isOnline": true,
    "hasStory": true,
    "iswatched": false,
    "message": "she slapped..I just say time slows down over heavy object ",
    "time": '7:00 pm'
  },
  {
    "name": "Schrödinger",
    "imageUrl": "imag/scho.png",
    "isOnline": false,
    "hasStory": false,
    "iswatched": false,
    "message": "That fuc*ing cat make sound😭😢",
    "time": "7:00 am"
  },
  {
    "name": "Heisenberg",
    "imageUrl": "imag/heisenberg.png",
    "isOnline": true,
    "hasStory": true,
    "iswatched": false,
    "message": "Even my life is Uncertain",
    "time": "7:00 am"
  },
  {
    "name": "Max Plank",
    "imageUrl": "imag/max.png",
    "isOnline": false,
    "hasStory": false,
    "iswatched": true,
    "message": "I am not sure about my discovery!!",
    "time": "6:50 am"
  },
  {
    "name": "Madam Curie",
    "imageUrl": "imag/madam.png",
    "isOnline": true,
    "hasStory": true,
    "iswatched": true,
    "message": "We're radiating enthusiasm.",
    "time": "yesterday"
  },
  {
    "name": "Hubble",
    "imageUrl": "imag/hubble.png",
    "isOnline": false,
    "hasStory": false,
    "iswatched": false,
    "message": "Why only the space is expanding...not mine😢",
    "time": "2nd Feb"
  },
  {
    "name": "Kelvin",
    "imageUrl": "imag/kelvin.png",
    "isOnline": true,
    "hasStory": true,
    "iswatched": false,
    "message": "I didn't get prize.. cuz I have no degree 😅",
    "time": "28th Jan"
  },
  {
    "name": "Tesla",
    "imageUrl": "imag/tesla.png",
    "isOnline": true,
    "hasStory": false,
    "message": "Mine frequency is higher",
    "iswatched": true,
    "time": "25th Jan"
  },
  {
    "name": "Dirac",
    "imageUrl": "imag/dirac.png",
    "isOnline": true,
    "hasStory": false,
    "iswatched": true,
    "message": "We can't meet parallel universe.cuz we are parallel",
    "time": "15th Jan"
  }
];

chatsection() {
  return SingleChildScrollView(
      child: Column(
          children: List.generate(conversation.length, (index) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: InkWell(
          onTap: (() {}),
          splashColor: Colors.grey,
          child: ListTile(
              leading: conversation[index]['hasStory']
                  ? (conversation[index]['isOnline']
                      ? (Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 3,
                                            color: Colors.blueAccent,
                                            style: BorderStyle.solid),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              conversation[index]['imageUrl']),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                )
                              ],
                            ),
                            Positioned(
                                top: 28,
                                left: 31,
                                height: 25,
                                width: 15,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                ))
                          ],
                        ))
                      : Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 3,
                                            color: Colors.blueAccent,
                                            style: BorderStyle.solid),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              conversation[index]['imageUrl']),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ))
                  : (conversation[index]['isOnline']
                      ? (Stack(
                          children: [
                            Column(
                              children: [
                                (Container(
                                  height: 48,
                                  width: 48,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              conversation[index]['imageUrl']),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                )),
                              ],
                            ),
                            Positioned(
                                top: 28,
                                left: 31,
                                height: 25,
                                width: 15,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                ))
                          ],
                        ))
                      : (Container(
                          height: 48,
                          width: 48,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      conversation[index]['imageUrl']),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ))),
              title: Text(
                conversation[index]['name'],
                style: TextStyle(fontSize: 18),
              ),
              subtitle: conversation[index]['iswatched']
                  ? Text(
                      conversation[index]['message'] +
                          " " +
                          conversation[index]['time'],
                      overflow: TextOverflow.ellipsis,
                    )
                  : Text(
                      conversation[index]['message'] +
                          " " +
                          conversation[index]['time'],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    )),
        ));
  })));
}
