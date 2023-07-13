import 'package:app_comic/model/trending_model.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Continue reading...",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sort By :",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      'All',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey[500],
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Last seen',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 640,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                // const SliverGridDelegateWithMaxCrossAxisExtent(
                //   maxCrossAxisExtent: 200,
                //   childAspectRatio: 3 / 2,
                //   crossAxisSpacing: 20,
                //   mainAxisSpacing: 20,
                // ),
                itemCount: trending.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 25),
                      Container(
                        height: 170,
                        width: 135,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            trending[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        trending[index].name,
                        style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        trending[index].lastChapter,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
