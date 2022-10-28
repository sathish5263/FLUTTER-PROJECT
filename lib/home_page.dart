import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "assets/images/indian.png",
    "assets/images/chinese.png",
    "assets/images/american.png",
    "assets/images/pakistani.png",
    "assets/images/indonesian.png",
    "assets/images/german.png",
  ];
  List<String> catexts = [
    "Indian",
    "Chinese",
    "American",
    "Pakistani",
    "Indonesian",
    "German"
  ];
  List<String> altexts = [
    "Chicken Fry",
    "Fish Fry",
    "Mutton Fry",
    "Sandwich",
    "Chocolate",
    "Ice Cream"
  ];
  List<String> alratings = ["5.0", "4.6", "4.9", "4.6", "5.0", "4.0"];
  List<String> alqty = ["55", "33", "22", "66", "88", "44"];
  String username = "Buddy";
  int startingIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 252, 252, 252),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/homeback.jpg",
                scale: 1.5,
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(170, 50, 0, 0),
                  child: Text(
                    "Taste!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 254, 255, 253),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      decoration: TextDecoration.none,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(150, 90, 0, 0),
                  child: Text(
                    // ignore: unnecessary_string_interpolations
                    "$username",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      decoration: TextDecoration.none,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 150, 0, 0),
                child: Image.asset(
                  "assets/images/search.png",
                  scale: 1.5,
                ),
                //  IconButton(
                //     color: Colors.white,
                //     onPressed: (() {}),
                //     iconSize: 30,
                //     splashRadius: 30,
                //     icon: Icon(Icons.search_outlined)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(220, 155, 0, 0),
                child: Image.asset(
                  "assets/images/rating.png",
                  scale: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 200, 0, 0),
                child: FlutterToggleTab(
                  labels: const ["Breakfast", "Lunch", "Dinner"],
                  selectedIndex: startingIndex,
                  selectedLabelIndex: (i) {
                    // print("Selected Index $index");
                    setState(() {
                      startingIndex = i;
                    });
                  },
                  width: 80,
                  borderRadius: 5,
                  height: 40,
                  selectedBackgroundColors: const [Colors.white],
                  selectedTextStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  unSelectedTextStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 195, 229),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 275, 0, 0),
                  child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      height: 900,
                      width: 800,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 270, 0),
                            child: Text(
                              "Traditional",
                              style: TextStyle(
                                color: Color.fromARGB(255, 11, 3, 2),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: SizedBox(
                                      height: 140,
                                      child: GridView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: images.length,
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,
                                            childAspectRatio: 1 / 1,
                                            mainAxisSpacing: 0,
                                          ),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                print(index);
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Container(
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Image.asset(
                                                          images[index],
                                                          fit: BoxFit.cover,
                                                          scale: 0.5,
                                                          color: Color.fromARGB(
                                                                  255,
                                                                  156,
                                                                  137,
                                                                  137)
                                                              .withOpacity(0.8),
                                                          colorBlendMode:
                                                              BlendMode.darken,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                40, 100, 0, 10),
                                                        child: Text(
                                                          catexts[index],
                                                          style: const TextStyle(
                                                              color: Color.fromARGB(255, 5, 2, 2),
                                                              fontSize: 19,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              decoration:
                                                                  TextDecoration
                                                                      .none),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ))),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 455, 10, 50),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: 600,
                  width: 800,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 270, 0),
                        child: Text(
                          "Menu",
                          style: TextStyle(
                            color: Color.fromARGB(255, 9, 5, 5),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Expanded(
                          child: startingIndex == 0
                              ? Column(children: [
                                  Container(
                                    height: 565,
                                    width: 350,
                                    child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 6,
                                        itemBuilder: (context, index) {
                                          return Card(
                                            elevation: 10,
                                            margin: EdgeInsets.fromLTRB(
                                                10, 0, 0, 20),
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(12),
                                                  child: Image.asset(
                                                    images[index],
                                                    fit: BoxFit.cover,
                                                    scale: 3,
                                                    color: Color.fromARGB(
                                                            255, 230, 214, 214)
                                                        .withOpacity(0.8),
                                                    colorBlendMode:
                                                        BlendMode.darken,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          140, 10, 0, 20),
                                                  child: Text(
                                                    altexts[index],
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          140, 40, 0, 20),
                                                  child: Text(
                                                    altexts[index],
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        140, 70, 0, 20),
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/star.jpg",
                                                          scale: 15,
                                                        ),

                                                        // Icon(Icons
                                                        //     .star_rate_rounded),
                                                        Text(
                                                          " " +
                                                              alratings[index],
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 18),
                                                        ),
                                                      ],
                                                    )),
                                                Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        220, 70, 0, 20),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Qty: " +
                                                              alqty[index],
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .grey),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          );
                                        }),
                                  ),
                                ])
                              : Container()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {}, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          //  backgroundColor: Colors.amber,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mic_none_outlined, color: Colors.black),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline, color: Colors.black),
          label: "",
        ),
      ]),
    );
  }
}
