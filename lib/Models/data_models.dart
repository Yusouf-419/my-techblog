import 'package:techblog/gen/assets.gen.dart';

class HashtagList {
  String title;

  HashtagList({required this.title});
}

class BlogList {
  int id;
  String imageUrl;
  String title;
  String writer;
  String WriterImageUrl;
  String data;
  String contect;
  String views;

  BlogList({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
    required this.WriterImageUrl,
    required this.data,
    required this.contect,
    required this.views,
  });
}

Map HomepagePoster = {
  "imageUrl": Assets.images.posterImage.path,
  "writer": "ملیکا عزیزی",
  "date":"یک روزپیش",
  "title":"دوازده قدم برنامه نویسی یک دوره ی...س",
  "view":"255"
};
