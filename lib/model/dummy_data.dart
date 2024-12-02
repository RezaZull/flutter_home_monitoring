import 'package:monitoring_smart_room/model/devices_model.dart';
import 'package:monitoring_smart_room/model/room_model.dart';

var dummyData = [
  RoomModel(
      roomName: "Living Room",
      roomImage:
          'https://images.unsplash.com/photo-1513694203232-719a280e022f?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      roomDevices: [
        DevicesModel(
            deviceName: "Purifier",
            deviceStatus: true,
            deviceImage: "air-purifier.png"),
        DevicesModel(
            deviceName: "Fan", deviceStatus: false, deviceImage: "fan.png"),
        DevicesModel(
            deviceName: "Lamp", deviceStatus: false, deviceImage: "light.png"),
      ]),
  RoomModel(
      roomName: "Bed Room",
      roomImage:
          "https://plus.unsplash.com/premium_photo-1675537843200-78c1a0ea1736?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      roomDevices: [
        DevicesModel(
            deviceName: "Purifier",
            deviceStatus: true,
            deviceImage: "air-purifier.png"),
        DevicesModel(
            deviceName: "Night Lamp",
            deviceStatus: false,
            deviceImage: "lightbulb.png"),
        DevicesModel(
            deviceName: "Lamp",
            deviceStatus: true,
            deviceImage: "lightbulb.png"),
      ]),
  RoomModel(
      roomName: "Toilet",
      roomImage:
          "https://plus.unsplash.com/premium_photo-1664392164625-4f806c5f70f5?q=80&w=1951&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      roomDevices: [
        DevicesModel(
            deviceName: "Lamp",
            deviceStatus: true,
            deviceImage: "lightbulb.png"),
      ]),
];
