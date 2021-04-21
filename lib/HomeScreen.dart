import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://img.freepik.com/free-photo/whitetail-deer-standing-autumn-wood_167946-143.jpg?size=626&ext=jpg',
  'https://img.freepik.com/free-photo/closeup-shot-majestic-bald-eagle-about-fly-from-wooden-post-cool-day_181624-13562.jpg?size=626&ext=jpg&ga=GA1.2.145604237.1604566061',
  'https://image.freepik.com/free-photo/african-lion-national-park-south-africa_167946-116.jpg',
  'https://image.freepik.com/free-photo/cutie-cat-relaxing-couch-home_231208-7808.jpg',
  'https://image.freepik.com/free-photo/small-pug-sofa_231208-7768.jpg',
  'https://img.freepik.com/free-photo/white-horses-camargue-france_119101-9.jpg?size=626&ext=jpg'
];

final List<String> imgListmovies = [
  'https://play-lh.googleusercontent.com/Jl6sGCaksl42iZKqKrPnQSfJXs7js0fVx4vZ54XbmWeSK6LCzqrnAkSPuUDo44wOqWF00oM0VwcNauNsKfY=w400-h600',
  'https://play-lh.googleusercontent.com/yYIyC9bSGizVZs7hiEBCXz-GNex6QVSbUAk8y9jasidsQDQ0O1CqqtH4UL07lvJ-vRKfQJnI2yAxBD4Gbw=w400-h600',
  'https://play-lh.googleusercontent.com/9qoZ0vNI-87W6pb20dVGAeumcB3dHcyk-YD0vZ3XP8nRe9zoPaRlX0E9_AAzZIIw6L4=w400-h600',
  'https://play-lh.googleusercontent.com/nxWjOiNZKJZ8mfVLTqxWprprDXhO-D1S1C_S-m7VLWHBp32IziTVMs1u5R6ISb79zTKK=w400-h600',
  'https://play-lh.googleusercontent.com/lHLyHXgJQCSdx9JWH1uRPUsoI0d7yx_GtZCM-MNrTpNVReAjtI-HCEFMXYb1o2JaPIQZTQ=w400-h600',
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _cartitem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 100,
        height: 120,
        color: Colors.white.withOpacity(.15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 3 / 5 - 50,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  " Dose the united states \n need a Space force?",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "By Abanoub",
                          style: TextStyle(
                              fontSize: 12, color: Colors.yellow[600]),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                            "Read More",
                            style: TextStyle(fontSize: 12),
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 7,
                    color: Colors.yellow[700],
                  )
                ],
              ),
            ),
            Expanded(
              child: Image.network(
                "https://image.freepik.com/free-photo/astronaut-spacewalking-awesome-cosmic-backgrounds-with-glowing-stars-asteroids_112293-10.jpg",
                width: MediaQuery.of(context).size.width * 2 / 5 - 30,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/image/logo2.png",
                width: 150,
                height: 100,
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.sort,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 7,
                      height: 23,
                      color: Colors.yellow[700],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Today's picks",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, i) {
                  return _cartitem();
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 7,
                      height: 23,
                      color: Colors.yellow[700],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Nat Geo Tv",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.network(
                        imgListmovies[index],
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        height: MediaQuery.of(context).size.height,
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

// carousel_slider
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
