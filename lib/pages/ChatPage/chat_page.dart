import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nonamukja/pages/MainPage/AppBarPage/alram_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 127, 91, 255)),
          elevation: 0,
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(CupertinoIcons.bell),
              padding: const EdgeInsets.only(right: 15),
              onPressed: () => pushNewScreen(context,
                  screen: AlramPage(), withNavBar: false),
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Divider(),
            ChatContainer(),
            Divider(),
            ChatContainer(),
            Divider(),
            ChatContainer(),
            Divider(),
          ],
        )));
  }
}

/*
  chat 컨테이너
 */
class ChatContainer extends StatelessWidget {
  // 볼드 텍스트 스타일
  TextStyle boldStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // 피드 상단바
        ListTile(
          leading: CircleAvatar(
            radius: 23,
            backgroundImage: null,
            backgroundColor: Colors.grey,
          ),
          title: GestureDetector(
            child: Text('채팅방', style: boldStyle),
            onTap: () {
              print('TEST Tapped');
            },
          ),
          subtitle: Text("test"),
        )
      ],
    ));
  }
}