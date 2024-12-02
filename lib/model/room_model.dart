import 'package:monitoring_smart_room/model/devices_model.dart';

class RoomModel {
  String roomName;
  String roomImage;
  List<DevicesModel> roomDevices;
  RoomModel({
    required this.roomName,
    required this.roomImage,
    required this.roomDevices,
  });
}
