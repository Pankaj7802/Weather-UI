import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/model/weather_location.dart';

class SingleWeather extends StatelessWidget {
  final int index;
  SingleWeather(this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      locationList[index].city,
                      style: GoogleFonts.lato(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locationList[index].dateTime,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationList[index].temprature,
                      style: GoogleFonts.lato(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          locationList[index].iconUrl,
                          height: 34,
                          width: 34,
                          color: Colors.white38,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          locationList[index].weatherType,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.white38)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Wind",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      locationList[index].wind.toString(),
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      "km/h",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.greenAccent,
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Rain",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      locationList[index].rain.toString(),
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      "%",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.redAccent,
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Humidity",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      locationList[index].humidity.toString(),
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      "%",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.redAccent,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
