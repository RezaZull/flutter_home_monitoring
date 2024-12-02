import 'package:flutter/material.dart';
import 'package:monitoring_smart_room/model/room_model.dart';
import 'package:monitoring_smart_room/widgets/devices_card.dart';
import 'package:monitoring_smart_room/widgets/room_hero.dart';

class RoomScreen extends StatefulWidget {
  final RoomModel roomData;
  final dynamic changeStatusDevices;
  final int roomIndex;
  const RoomScreen(
      {super.key,
      required this.roomData,
      required this.changeStatusDevices,
      required this.roomIndex});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.roomData.roomName),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RoomHero(roomData: widget.roomData),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Devices",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                    shrinkWrap: true,
                    itemCount: widget.roomData.roomDevices.length,
                    itemBuilder: (context, i) {
                      return DevicesCard(
                        devicesData: widget.roomData.roomDevices[i],
                        changeStatusDevices: widget.changeStatusDevices,
                        roomIndex: widget.roomIndex,
                        deviceIndex: i,
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
