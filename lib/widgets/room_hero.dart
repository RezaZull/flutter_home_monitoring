import 'package:flutter/material.dart';
import 'package:monitoring_smart_room/model/room_model.dart';

class RoomHero extends StatelessWidget {
  final RoomModel roomData;
  const RoomHero({super.key, required this.roomData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          roomData.roomImage,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Text(
          roomData.roomName,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text("${roomData.roomDevices.length} Total Devices")
      ],
    );
  }
}
