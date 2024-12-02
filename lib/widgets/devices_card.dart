import 'package:flutter/material.dart';
import 'package:monitoring_smart_room/model/devices_model.dart';

class DevicesCard extends StatefulWidget {
  final DevicesModel devicesData;
  final int roomIndex;
  final int deviceIndex;
  final dynamic changeStatusDevices;
  const DevicesCard(
      {super.key,
      required this.devicesData,
      required this.roomIndex,
      required this.deviceIndex,
      required this.changeStatusDevices});

  @override
  State<DevicesCard> createState() => _DevicesCardState();
}

class _DevicesCardState extends State<DevicesCard> {
  void changeStatus(bool value) {
    setState(() {
      widget.devicesData.deviceStatus = value;
    });
    widget.changeStatusDevices(widget.roomIndex, widget.deviceIndex, value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/${widget.devicesData.deviceImage}",
                height: 50,
              ),
              Center(
                child: Text(
                  widget.devicesData.deviceName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  widget.devicesData.deviceStatus ? "ON" : "OFF",
                  style: const TextStyle(color: Colors.white),
                ),
                Switch(
                    value: widget.devicesData.deviceStatus,
                    onChanged: (bool value) {
                      changeStatus(value);
                    })
              ]),
            ],
          ),
        ));
  }
}
