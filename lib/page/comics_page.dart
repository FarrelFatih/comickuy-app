import 'package:app_comic/model/provider_model.dart';
import 'package:app_comic/model/trending_model.dart';
import 'package:app_comic/widget/scroll_comics_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComicsPage extends StatefulWidget {
  const ComicsPage({super.key});

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      // border: Border.all(width: 3.5),
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      color: Color(0xffF4F3FD),
                    ),
                    child: Icon(
                      Icons.person_outline,
                      size: 50,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Farrel Fatih",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Switch(
                    value: themeChange.darkTheme,
                    onChanged: (bool value) {
                      themeChange.darkTheme = value;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 290,
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.grey[350],
                      ),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search_outlined,
                          color: Colors.grey[350],
                          size: 30,
                        ),
                        border: InputBorder.none,
                        hintText: "Search Comics",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFD8F28),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.manage_search_outlined,
                      color: Colors.white,
                      size: 33,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            SizedBox(height: 3),
            ScrollComics(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
