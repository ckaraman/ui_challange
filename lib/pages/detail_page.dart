import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 8,
                      shape: const CircleBorder(),
                      color: Colors.white,
                      elevation: 10,
                      onPressed: () {},
                      child: const Icon(Icons.arrow_back_rounded, size: 17),
                    ),
                    const Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    MaterialButton(
                      minWidth: 5,
                      elevation: 10,
                      shape: const CircleBorder(),
                      color: Colors.white,
                      onPressed: () {},
                      child: const Icon(
                        Icons.more_horiz_outlined,
                        size: 22,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  child: SizedBox(
                    height: 300,
                    width: 350,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'assets/detail_otel_pic.jpg',
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        const Positioned(
                          bottom: 45,
                          left: 10,
                          child: Text(
                            'Misty Rock Resort',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          left: 10,
                          bottom: 20,
                          child: Icon(
                            Icons.pin_drop_rounded,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          bottom: 22,
                          left: 35,
                          child: Text(
                            'Wayanad',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          bottom: 20,
                          right: 65,
                          child: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                            bottom: 20,
                            right: 20,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                        child: CircleAvatar(
                          maxRadius: 32,
                          minRadius: 32,
                          backgroundImage:
                              AssetImage('assets/detail_otel_pic.jpg'),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    MaterialButton(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: const Color(0xfff05a22),
                      onPressed: () {},
                      child: const Text(
                        'Detail',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.white,
                      onPressed: () {},
                      child: const Text(
                        'Review',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: '\$',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '410',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: '/Person',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 190,
                        height: 50,
                        onPressed: () {},
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: const Color(0xfff05a22),
                        child: Row(
                          children: const [
                            Text(
                              'Continue ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
