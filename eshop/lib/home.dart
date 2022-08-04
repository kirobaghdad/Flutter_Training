import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 30, color: Colors.black),
            textAlign: TextAlign.left,
          )),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
          child: CarouselSlider(
              options: CarouselOptions(
                  height: 100,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2)),
              items: [
                Container(
                  color: const Color.fromARGB(255, 9, 53, 214),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Bose Home Speaker",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Text",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                              'https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-cartoon-speaker-image_1127518.jpg',
                              width: MediaQuery.of(context).size.width / 8),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    color: const Color.fromARGB(255, 9, 53, 214),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "Bose Home Speaker",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Text",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                'https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-cartoon-speaker-image_1127518.jpg',
                                width: MediaQuery.of(context).size.width / 8),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ].map(((e) {
                return Builder(
                  builder: (BuildContext context) {
                    return e;
                  },
                );
              })).toList()),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.cyan,
                  backgroundImage: NetworkImage(
                    "https://png.pngtree.com/element_origin_min_pic/16/09/07/1557cfc29509735.jpg",
                  )),
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.cyan,
                  backgroundImage: NetworkImage(
                    "https://png.pngtree.com/png-vector/20190225/ourlarge/pngtree-favorite-vector-icon-png-image_702559.jpg",
                  )),
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.cyan,
                  backgroundImage: NetworkImage(
                    "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-valid-user-icon-png-image_516298.jpg",
                    scale: 100,
                  )),
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.cyan,
                  backgroundImage: NetworkImage(
                    "https://png.pngtree.com/element_our/png_detail/20181031/cartoon-holiday-gift-box-elements-png_224599.jpg",
                    scale: 100,
                  ))
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
          child: Text("Sales", style: TextStyle(fontSize: 30)),
        ),
        Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/517MGkvMhXL._AC_SX679_.jpg",
                  height: 150,
                ),
                const Text(
                  "Smartphones",
                  style: TextStyle(fontSize: 25),
                )
              ],
            )),
            Expanded(
                child: Column(
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/71TOE0w7DzL._AC_SY450_.jpg",
                  height: 150,
                ),
                const Text(
                  "Monitors",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ))
          ],
        )
      ]),
    ));
  }
}
