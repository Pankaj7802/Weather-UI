class WeatherLocation {
  final String city;
  final String dateTime;
  final String temprature;
  final String weatherType;
  final String iconUrl;
  int wind;
  int rain;
  int humidity;
  WeatherLocation(
      {required this.city,
      required this.dateTime,
      required this.temprature,
      required this.weatherType,
      required this.iconUrl,
      required this.wind,
      required this.rain,
      required this.humidity});
}

final locationList = [
  WeatherLocation(
      city: "Kolkata",
      dateTime: "07:50 PM - Monday, 9 jun 2024",
      temprature: "24",
      weatherType: "Night",
      iconUrl: "assets/images/moon.svg",
      wind: 10,
      rain: 2,
      humidity: 10),
  WeatherLocation(
      city: "London",
      dateTime: "02:50 PM - Monday, 9 jun 2024",
      temprature: "14\u2103",
      weatherType: "Cloudy",
      iconUrl: "assets/images/cloudy.svg",
      wind: 15,
      rain: 3,
      humidity: 82),
  WeatherLocation(
      city: "New York",
      dateTime: "09:50 AM - Monday, 9 jun 2024",
      temprature: "17\u2103",
      weatherType: "Sunny",
      iconUrl: "assets/images/sun.svg",
      wind: 5,
      rain: 15,
      humidity: 61),
  WeatherLocation(
      city: "Sydeny",
      dateTime: "01:20 AM - Tuesday, 10 jun 2024",
      temprature: "7\u2103",
      weatherType: "Rainy",
      iconUrl: "assets/images/rain.svg",
      wind: 20,
      rain: 70,
      humidity: 91),
];
