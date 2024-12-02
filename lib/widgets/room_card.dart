import 'package:flutter/material.dart';
import 'package:monitoring_smart_room/model/room_model.dart';

class RoomCard extends StatelessWidget {
  final RoomModel roomData;
  const RoomCard({super.key, required this.roomData});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 50, backgroundImage: NetworkImage(roomData.roomImage)),
          Center(
            child: Text(
              roomData.roomName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "${roomData.roomDevices.length} Devices",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
