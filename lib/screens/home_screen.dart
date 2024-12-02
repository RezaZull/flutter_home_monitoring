import 'package:flutter/material.dart';
import 'package:monitoring_smart_room/model/dummy_data.dart';
import 'package:monitoring_smart_room/model/room_model.dart';
import 'package:monitoring_smart_room/screens/room_screen.dart';
import 'package:monitoring_smart_room/widgets/banner/banner_widget.dart';
import 'package:monitoring_smart_room/widgets/room_card.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  List<RoomModel> dataRoom = dummyData;

  changeStatusDevices(int roomIndex, int deviceIndex, bool newdeviceStatus) {
    setState(() {
      dataRoom[roomIndex].roomDevices[deviceIndex].deviceStatus =
          newdeviceStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.menu), Icon(Icons.person)],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Hello Reza 👋",
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                const Text("Welcome to home"),
                const SizedBox(
                  height: 16,
                ),
                const BannerWidget(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Your Room",
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Add"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: dataRoom.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    final RoomModel roomData = dataRoom[i];
                    return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RoomScreen(
                                roomData: roomData,
                                changeStatusDevices: changeStatusDevices,
                                roomIndex: i);
                          }));
                        },
                        child: RoomCard(
                          roomData: roomData,
                        ));
                  },
                )
              ],
            ),
          ),
        ));
  }
}
