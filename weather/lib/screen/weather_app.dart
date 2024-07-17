import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/model/weather_location.dart';
import 'package:weather/slider_dot/slider_dot.dart';
import 'package:weather/widget/buildin_transformers.dart';
import 'package:weather/widget/single_weather.dart';

class WeatherApp extends StatefulWidget {
  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  var _currentPage = 0;
  late String bgImg;
  _onChangePage(var index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[_currentPage].weatherType == "Sunny") {
      bgImg = 'assets/images/sunny.jpg';
    } else if (locationList[_currentPage].weatherType == "Night") {
      bgImg = 'assets/images/night.jpg';
    } else if (locationList[_currentPage].weatherType == "Cloudy") {
      bgImg = "assets/images/cloudy.jpeg";
    } else {
      bgImg = 'assets/images/rainy.jpg';
    }
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(""),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {
                print("hrlll");
              },
              child: SvgPicture.asset(
                'assets/images/menu.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            SvgPicture.asset(
              bgImg,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              margin: EdgeInsets.only(top: 140, left: 15),
              child: Row(
                children: [
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 5),
                  //   height: 5,
                  //   width: 12,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.all(Radius.circular(5))),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 5),
                  //   height: 5,
                  //   width: 5,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white54,
                  //       borderRadius: BorderRadius.all(Radius.circular(5))),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 5),
                  //   height: 5,
                  //   width: 5,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white54,
                  //       borderRadius: BorderRadius.all(Radius.circular(5))),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 5),
                  //   height: 5,
                  //   width: 5,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white54,
                  //       borderRadius: BorderRadius.all(Radius.circular(5))),
                  // ),
                  for (int i = 0; i < locationList.length; i++)
                    if (i == _currentPage) SliderDot(true) else SliderDot(false)
                ],
              ),
            ),
            TransformerPageView(
              transformer: ScaleAndFadeTransformer(),
              viewportFraction: 0.8,
              onPageChanged: _onChangePage,
              scrollDirection: Axis.horizontal,
              itemCount: locationList.length,
              itemBuilder: (ctx, i) => SingleWeather(i),
            )
            // SingleWeather()
          ],
        ),
      ),
    );
  }
}
