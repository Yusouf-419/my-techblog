import 'package:flutter/material.dart';
import 'package:techblog/Models/data_models.dart';
import 'package:techblog/Models/fake_data.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my-colors.dart';
import 'package:techblog/my_strigs.dart';

class Homescreen extends StatelessWidget {
  final dynamic themeData;
  final dynamic size;
  final double bodyMargin;
  const Homescreen({
    super.key,
    required this.themeData,
    required this.size,
    required this.bodyMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //homepagePoster---
              HomePagePoster(size: size, themeData: themeData),

              SizedBox(height: 25),
              //hashtagList
              HashTagList(bodyMargin: bodyMargin, themeData: themeData),

              SizedBox(height: 45),

              //titleBlogpost
              Padding(
                padding: EdgeInsets.only(right: bodyMargin),
                child: Row(
                  children: [
                    ImageIcon(
                      Assets.icons.write.provider(),
                      color: SolidColors().colorTitle,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(MyStrigs.viewHotestBlog, style: themeData.bodySmall),
                  ],
                ),
              ),

              //listViewBlogList
              ListViewBlogList(size: size, bodyMargin: bodyMargin, themeData: themeData),

              SizedBox(height: 30),

              //titlepodcastpost
              Padding(
                padding: EdgeInsets.only(right: bodyMargin),
                child: Row(
                  children: [
                    ImageIcon(
                      Assets.icons.voice.provider(),
                      color: SolidColors().colorTitle,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      MyStrigs.viewHotestPodcast,
                      style: themeData.bodySmall,
                    ),
                  ],
                ),
              ),

              ListView.builder(itemBuilder: itemBuilder)
            ],
          ),
        ),
      ],
    );
  }
}

class ListViewBlogList extends StatelessWidget {
  const ListViewBlogList({
    super.key,
    required this.size,
    required this.bodyMargin,
    required this.themeData,
  });

  final dynamic size;
  final double bodyMargin;
  final dynamic themeData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: blogList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  16,
                  8,
                  index == 0 ? bodyMargin : 16,
                  0,
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width / 1.8,
                          height: size.height / 4.2,
    
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                blogList[index].imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          foregroundDecoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              colors: GradiantColors().blogpost,
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 17,
                          right: 0,
                          left: 0,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                blogList[index].writer,
                                style: themeData.headlineSmall,
                              ),
    
                              Row(
                                children: [
                                  Text(
                                    blogList[index].views,
                                    style: themeData.headlineSmall,
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: SolidColors().subTitleText,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  16,
                  8,
                  index == 0 ? bodyMargin : 16,
                  0,
                ),
                child: SizedBox(
                  width: size.width / 2,
                  child: Text(
                    blogList[index].title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: themeData.bodyMedium,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HashTagList extends StatelessWidget {
  const HashTagList({
    super.key,
    required this.bodyMargin,
    required this.themeData,
  });

  final double bodyMargin;
  final dynamic themeData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listHastag.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
              5,
              0,
              index == 0 ? bodyMargin : 15,
              0,
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: GradiantColors().tags,
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
    
              height: 60,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                child: Row(
                  children: [
                    ImageIcon(
                      Assets.icons.tag.provider(),
                      color: SolidColors().subTitleText,
                      size: 16,
                    ),
                    SizedBox(width: 10),
                    Text(
                      listHastag[index].title,
                      style: themeData.headlineLarge,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomePagePoster extends StatelessWidget {
  const HomePagePoster({
    super.key,
    required this.size,
    required this.themeData,
  });

  final dynamic size;
  final dynamic themeData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Container(
            width: size.width / 1.22,
            height: size.height / 4.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              image: DecorationImage(
                image: AssetImage(HomepagePoster['imageUrl']),
                fit: BoxFit.cover,
              ),
            ),
    
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                colors: GradiantColors().posterCoverGradiant,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    HomepagePoster['writer'] +
                        // ignore: prefer_interpolation_to_compose_strings
                        " - " +
                        HomepagePoster['date'],
                    style: themeData.headlineSmall,
                  ),
                  Row(
                    children: [
                      Text(
                        HomepagePoster['view'],
                        style: TextTheme.of(context).headlineSmall,
                      ),
                      SizedBox(width: 3),
                      Icon(
                        Icons.remove_red_eye,
                        color: SolidColors().subTitleText,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                HomepagePoster["title"],
                style: themeData.headlineMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


