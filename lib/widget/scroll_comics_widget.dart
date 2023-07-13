import 'package:app_comic/model/trending_model.dart';
import 'package:flutter/material.dart';

class ScrollComics extends StatefulWidget {
  const ScrollComics({super.key});

  @override
  State<ScrollComics> createState() => _ScrollComicsState();
}

class _ScrollComicsState extends State<ScrollComics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 300,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
        itemCount: trending.length,
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            semanticContainer: true,
            elevation: 4,
            // margin: EdgeInsets.all(5),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  trending[index].image,
                  width: 60,
                  height: 500,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                trending[index].name,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
              ),
              subtitle: Container(
                alignment: Alignment.center,
                width: 43,
                height: 23,
                margin: EdgeInsets.only(right: 190, top: 4),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                decoration: BoxDecoration(
                  color: Color(0xffFFEBF0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  trending[index].chapter,
                  style: TextStyle(
                    color: Color(0xffFD8F28),
                    fontSize: 10.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
