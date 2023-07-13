class TrendingComicsModel {
  String name;
  String mangaka;
  String image;
  String chapter;
  String lastChapter;

  TrendingComicsModel(
      this.name, this.mangaka, this.image, this.chapter, this.lastChapter);
}

List<TrendingComicsModel> trending = trendingData
    .map((item) => TrendingComicsModel(
          item['name']!,
          item['mangaka']!,
          item['image']!,
          item['chapter']!,
          item['lastChapter']!,
        ))
    .toList();

var trendingData = [
  {
    "name": "One Piece",
    "mangaka": "Eichiro Oda",
    "image": "images/onepiece.jpg",
    "chapter": "Chapter 1054",
    "lastChapter": "Chapter 950",
  },
  {
    "name": "Solo Leveling",
    "mangaka": "Chu-Gong",
    "image": "images/sololeveling.jpg",
    "chapter": "Chapter 179",
    "lastChapter": "Chapter 120",
  },
  {
    "name": "Sakamoto Days",
    "mangaka": "Yuto Suzuki",
    "image": "images/sakamoto.jpg",
    "chapter": "Chapter 123",
    "lastChapter": "Chapter 110",
  },
  {
    "name": "One Punch Man",
    "mangaka": "Yusuke Murata",
    "image": "images/onepunch.jpg",
    "chapter": "Chapter 184",
    "lastChapter": "Chapter 135",
  },
  {
    "name": "Jujutsu Kaisen",
    "mangaka": "Gege Akutami",
    "image": "images/jujutsu.jpg",
    "chapter": "Chapter 234",
    "lastChapter": "Chapter 155",
  },
  {
    "name": "Mashle",
    "mangaka": "Hajime Komoto",
    "image": "images/mashle.jpg",
    "chapter": "Chapter 121",
    "lastChapter": "Chapter 102",
  },
  {
    "name": "Demon Slayer",
    "mangaka": "Koyoharu Gotouge",
    "image": "images/demonslayer.jpg",
    "chapter": "Chapter 233",
    "lastChapter": "Chapter 175",
  },
  {
    "name": "Black Clover",
    "mangaka": "Yuki Tabata",
    "image": "images/blackclover.jpg",
    "chapter": "Chapter 372",
    "lastChapter": "Chapter 220",
  },
];
