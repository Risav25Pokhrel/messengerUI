import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:messenger_ui/screen/chatsection.dart';
import 'package:messenger_ui/screen/topsection.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "MESSENGER UI",
    home: conversation(),
  ));
  FlutterNativeSplash.remove();
}

class conversation extends StatefulWidget {
  const conversation({Key? key}) : super(key: key);

  @override
  State<conversation> createState() => _conversationState();
}

class _conversationState extends State<conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Icon(
                      Icons.chat_bubble,
                      size: 25,
                      color: Colors.blue,
                    ),
                    Text(
                      "Chats",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Icon(
                      Icons.people,
                      size: 25,
                      color: Colors.grey,
                    ),
                    Text("People")
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Icon(
                      Icons.amp_stories,
                      size: 25,
                      color: Colors.grey,
                    ),
                    Text("Stories")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('imag/profile.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Chats",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(onTap: () {}, child: Icon(Icons.photo_camera_outlined)),
              InkWell(onTap: () {}, child: Icon(Icons.edit)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 237, 237),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              cursorColor: Colors.black,
              controller: null,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "SEARCH",
                  border: InputBorder.none), //remove underlined
            ),
          ),
          SizedBox(
            height: 10,
          ),
          mystories(),
          SizedBox(
            height: 10,
          ),
          chatsection()
        ]),
      )),
    );
  }
}
