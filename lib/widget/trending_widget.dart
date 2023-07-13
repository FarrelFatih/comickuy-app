import 'package:app_comic/model/trending_model.dart';
import 'package:flutter/material.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({super.key});

  @override
  State<TrendingWidget> createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 265,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trending.length,
        itemBuilder: ((context, index) {
          return Container(
            padding: EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(
                      trending[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 130,
                  child: Text(
                    trending[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person_2_rounded,
                      size: 16,
                      color: Colors.grey[500],
                    ),
                    SizedBox(width: 4),
                    Text(
                      trending[index].mangaka,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
