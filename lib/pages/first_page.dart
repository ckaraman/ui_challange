library first_page;

import 'package:flutter/material.dart';
import 'package:ui_challange/models/models.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundImage: AssetImage('assets/circle_avatar.png')),
        ),
        title: const Text.rich(
          TextSpan(
            text: 'Hello,',
            style: TextStyle(fontSize: 14, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: ' Niara!',
                  style: TextStyle(fontSize: 19, color: Colors.black))
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Find your Stay',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              ),
            ),
            infoWidget(),
            countryWidget(),
            specWigdet(),
            cardWidget(),
            spec2Widget(),
            SizedBox(
              height: 130,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              margin: const EdgeInsets.all(1),
                              height: 70,
                              width: 110,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage("assets/resort.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 10, 3),
                                child: Text(
                                  'Misty Rock Resort ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.pin_drop_sharp,
                                    color: Color(0xfff05a22),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    'Wayand',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding spec2Widget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Popular',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            'View All',
            style: TextStyle(fontSize: 13, color: Colors.orange),
          )
        ],
      ),
    );
  }

  SizedBox cardWidget() {
    return SizedBox(
      height: 190,
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      margin: const EdgeInsets.all(1),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/resort.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Misty Rock Resort',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.pin_drop_sharp,
                        color: Color(0xfff05a22),
                      ),
                      const Text(
                        'Wayand',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Card(
                          color: const Color(0xfff05a22),
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.navigate_next,
                            ),
                            color: Colors.white,
                            iconSize: 18,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Padding specWigdet() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Our Properties',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            'View All',
            style: TextStyle(fontSize: 13, color: Colors.orange),
          )
        ],
      ),
    );
  }

  SizedBox countryWidget() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: SizedBox(
                height: 70,
                width: 70,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              categories[index]['iconPath'] as String),
                        ),
                      ),
                    ),
                    Text(categories[index]['name'])
                  ],
                )),
          );
        },
      ),
    );
  }

  Row infoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: SizedBox(
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 15),
                      hintText: 'Search here',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  colors: [Color(0xffF78E48), Color(0xfff05a22)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
            ), //BoxShadow),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bubble_chart_outlined)),
          ),
        ),
      ],
    );
  }
}
