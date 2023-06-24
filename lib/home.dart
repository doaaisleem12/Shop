import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  bool heart1IsPressed = false;
  bool heart2IsPressed = false;
  bool heart3IsPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: Checkbox.width * 5,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: double.minPositive,
        title: Container(
          margin: const EdgeInsets.only(right: Checkbox.width / 2, left: Checkbox.width),
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: SvgPicture.asset('assets/icons/Search Icon.svg',fit: BoxFit.scaleDown),
              hintText: 'Search Product',
              hintStyle: const TextStyle(color: Colors.black54),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/icons/Cart Icon.svg',width: Checkbox.width * 1.1, height: Checkbox.width * 1.1),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 45,
            width: 45,
            margin: const EdgeInsets.only(right: Checkbox.width),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/icons/Bell.svg',width: Checkbox.width * 1.1, height: Checkbox.width * 1.1),
          ),
          SizedBox(
            height: 30,
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20
              ),
              child: Container(
                height: 122,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFF5E0AA1),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:5,),
                      child: Text("A Summer Suprise                                                                 " , style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Muli-Light.ttf',
                        color: Colors.white,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,),
                      child: Text("Cashback 20%                      ",
                        style: TextStyle(
                          fontSize: 29,
                          fontFamily: 'Muli-Light.ttf',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),

                      ),
                    ),

                  ],
                ),

                ),




            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20,
                  right: 20
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                       Column(
                        children: [
                          Container(
                  decoration: BoxDecoration(
                  color: Colors.pink[50], // Replace with your desired background color
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),// Use BoxShape.rectangle for a rectangular background
                ),
                            child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset('assets/icons/Flash Icon.svg'),),
                          ),
                              SizedBox(height: 8),
                              Text("Flash \n Deal")
                        ],
                      ),

                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink[50], // Replace with your desired background color
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),// Use BoxShape.rectangle for a rectangular background
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/Bill Icon.svg')),
                        ),
                        SizedBox(height: 8),
                        Text("Bill \n")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink[50], // Replace with your desired background color
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),// Use BoxShape.rectangle for a rectangular background
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/Game Icon.svg')),
                        ),
                        SizedBox(height: 8),
                        Text("Game \n ")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink[50], // Replace with your desired background color
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),// Use BoxShape.rectangle for a rectangular background
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/Gift Icon.svg')),
                        ),
                        SizedBox(height: 8),
                        Text("Daily \n Gifts")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink[50], // Replace with your desired background color
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),// Use BoxShape.rectangle for a rectangular background
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/Question mark.svg')),
                        ),
                        SizedBox(height: 8),
                        Text("More \n ")
                      ],
                    ),

                  ],
                ),

              ),
            ),

            Container(
              height: Checkbox.width * 3.1,
              padding: const EdgeInsets.only(bottom: Checkbox.width / 1.5,left: Checkbox.width,right: Checkbox.width/2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Special for you",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: "muli",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontFamily: "muli",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Checkbox.width * 7,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: Checkbox.width / 2,
                      left: Checkbox.width,
                    ),
                    width: Checkbox.width * 14,
                    margin: const EdgeInsets.only(
                        left: Checkbox.width * 1.2,
                        top: Checkbox.width / 4,
                        bottom: Checkbox.width * .8),
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black26,
                          BlendMode.darken,
                        ),
                        fit: BoxFit.fill,
                        image:
                        AssetImage("assets/images/Image Banner 2.png"),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Smartphone",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "muli",
                          ),
                        ),
                        Text(
                          "18 Brand",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.bold,
                            fontFamily: "muli",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: Checkbox.width / 2,
                      left: Checkbox.width,
                    ),
                    width: Checkbox.width * 14,
                    margin: const EdgeInsets.only(
                        left: Checkbox.width * 1.2,
                        top: Checkbox.width / 4,
                        bottom: Checkbox.width * .8),
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black26,
                          BlendMode.darken,
                        ),
                        fit: BoxFit.fill,
                        image:
                        AssetImage("assets/images/Image Banner 3.png"),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Fashion",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "muli",
                          ),
                        ),
                        Text(
                          "20 Brands",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.bold,
                            fontFamily: "muli",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Checkbox.width * 3.1,
              margin: const EdgeInsets.only(top: Checkbox.width / 2),
              padding: const EdgeInsets.only(bottom: Checkbox.width / 1.8,left: Checkbox.width,right: Checkbox.width/2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Products",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: "muli",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontFamily: "muli",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Checkbox.width * 15,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: Checkbox.width,
                      top: Checkbox.width / 2.5,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: Checkbox.width * 8.25,
                          height: Checkbox.width * 8.25,
                          padding: const EdgeInsets.all(Checkbox.width),
                          decoration: ShapeDecoration(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            color: Colors.grey.shade200,
                          ),
                          child: const Image(
                            fit: BoxFit.scaleDown,
                            image: AssetImage(
                              "assets/images/ps4_console_white_1.png",
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: Checkbox.width * 8,
                              child: Text(
                                "Wireless Controller for PS4",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "muli",
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: Checkbox.width * 8.5,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\$64.99",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "muli",
                                    ),
                                  ),
                                  Container(
                                    width: Checkbox.width * 1.5,
                                    height: Checkbox.width * 1.5,
                                    decoration: ShapeDecoration(
                                      shape: const CircleBorder(),
                                      color: heart1IsPressed ?  const Color(0xD3E9CACA) : Colors.grey.shade200,
                                    ),
                                    child: IconButton(
                                      // color: Colors.red,
                                      onPressed: () {
                                        heart1IsPressed = !heart1IsPressed;
                                        setState(() {});
                                      },
                                      icon: SvgPicture.asset(
                                        "assets/icons/Heart Icon_2.svg",
                                        color: heart1IsPressed
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: Checkbox.width,
                      top: Checkbox.width / 2.5,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: Checkbox.width * 8.25,
                          height: Checkbox.width * 8.25,
                          padding: const EdgeInsets.all(Checkbox.width),
                          decoration: ShapeDecoration(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            color: Colors.grey.shade200,
                          ),
                          child: const Image(
                            fit: BoxFit.scaleDown,
                            image: AssetImage(
                              "assets/images/Image Popular Product 2.png",
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: Checkbox.width * 8,
                              child: Text(
                                "Nike Sport White - Man Pant",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "muli",
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: Checkbox.width * 8.5,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\$50.5",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "muli",
                                    ),
                                  ),
                                  Container(
                                    width: Checkbox.width * 1.5,
                                    height: Checkbox.width * 1.5,
                                    decoration: ShapeDecoration(
                                      shape: const CircleBorder(),
                                      color: heart2IsPressed ?  const Color(0xD3E9CACA) : Colors.grey.shade200,
                                    ),
                                    child: IconButton(
                                      // color: Colors.red,
                                      onPressed: () {
                                        heart2IsPressed = !heart2IsPressed;
                                        setState(() {});
                                      },
                                      icon: SvgPicture.asset(
                                        "assets/icons/Heart Icon_2.svg",
                                        color: heart2IsPressed
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(
                      left: Checkbox.width,
                      top: Checkbox.width / 2.5,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: Checkbox.width * 8.25,
                          height: Checkbox.width * 8.25,
                          padding: const EdgeInsets.all(Checkbox.width),
                          decoration: ShapeDecoration(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            color: Colors.grey.shade200,
                          ),
                          child: const Image(
                            fit: BoxFit.scaleDown,
                            image: AssetImage(
                              "assets/images/Image Popular Product 3.png",
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: Checkbox.width * 8,
                              child: Text(
                                "Gloves Omega and Polygon joie Kids Bike Helmet",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "muli",
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: Checkbox.width * 8.5,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\$36.99",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "muli",
                                    ),
                                  ),
                                  Container(
                                    width: Checkbox.width * 1.5,
                                    height: Checkbox.width * 1.5,
                                    decoration: ShapeDecoration(
                                      shape: const CircleBorder(),
                                      color: heart3IsPressed ?  const Color(0xD3E9CACA) : Colors.grey.shade200,
                                    ),
                                    child: IconButton(
                                      // color: Colors.red,
                                      onPressed: () {
                                        heart3IsPressed = !heart3IsPressed;
                                        setState(() {});
                                      },
                                      icon: SvgPicture.asset(
                                        "assets/icons/Heart Icon_2.svg",
                                        color: heart3IsPressed
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/Shop Icon.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/Heart Icon.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/User Icon.svg')),
          ],
        ),
      ),
    );
  }
}