import 'package:flutter/material.dart';

// Main page of the widget (Carousel)
class CarouselScreen extends StatefulWidget {
  const CarouselScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int activePage = 0;
   PageController? _pageController;
  List<String> images = [
    "https://images.pexels.com/photos/1191403/pexels-photo-1191403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/9020063/pexels-photo-9020063.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12437389/pexels-photo-12437389.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/58997/pexels-photo-58997.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:       SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: PageView.builder(
                    itemCount: images.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      return Container(
                        // margin: EdgeInsets.all(10),
                        child: Image.network(images[pagePosition]),
                      );
                    }),
              ),
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(images.length, activePage))
            ],
          )

      )
      ,
    );
  }
  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(4),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.grey
                : Color(0xFF2EB62C),
            shape: BoxShape.circle),
      );
    });
  }

}