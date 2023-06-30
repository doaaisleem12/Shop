import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int i = 0, c = 3;
  var color = [Colors.red, Colors.purple, Colors.brown, Colors.white];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          Container(
            width: 70,
            margin: EdgeInsets.only(right: 20, bottom: 12, top: 12),
            padding: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4.8',
                  style: TextStyle(color: Colors.black),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                )
              ],
            ),
          )
        ],
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        leadingWidth: 65,
        leading: Container(
            margin: EdgeInsets.only(left: 20, bottom: 5, top: 5),
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: InkWell(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 18,
              ),
            )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/ps4_console_white_1.png',
                    width: 250,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          4,
                              (index) => InkWell(
                            onTap: () {
                              setState(() {
                                i = index;
                              });
                            },
                            child: Container(
                              height: 55,
                              width: 55,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: i == index
                                          ? Colors.deepOrangeAccent
                                          : Colors.transparent),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: Image.asset(
                                'assets/images/ps4_console_white_${index + 1}.png',
                              ),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Wireless Controller for PS4™',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.red.shade100,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20, left: 20),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 50),
                        child: InkWell(
                          child: Text(
                            'See More Detail >',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50))),
                          child: Row(children: [
                            Container(
                              width: 150,
                              margin: EdgeInsets.only(left: 20),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  4,
                                      (index) => Container(
                                    padding: EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        border: Border.all(
                                            color: c == index
                                                ? Colors.deepOrangeAccent
                                                : Colors.transparent)),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: color[index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.deepOrangeAccent,
                                  )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.deepOrangeAccent,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ]),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding:
        const EdgeInsets.only(left: 50, right: 50, top: 35, bottom: 30),
        height: 115,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: ElevatedButton(
          onPressed: () async {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            'Add To Cart',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
