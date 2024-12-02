import 'package:flutter/material.dart';
import 'package:monitoring_smart_room/widgets/banner/banner_col_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/cloud.png",
                      height: 50,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Most Cloudy",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        Text("Bandung, Indonesia",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  const Text('22°',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BannerColWidget(topText: "27°C", bottomText: "Sensible"),
                  BannerColWidget(topText: "4%", bottomText: "Presipation"),
                  BannerColWidget(topText: "66%", bottomText: "Humidity"),
                  BannerColWidget(topText: "16 km/h", bottomText: "Wind"),
                ],
              )
            ],
          ),
        ));
  }
}
