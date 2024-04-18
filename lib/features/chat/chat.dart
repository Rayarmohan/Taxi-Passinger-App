import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/chat/chat_controller.dart';
import 'package:taxi_passenger_app/features/chat/widget/message_row.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_images.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController controller = Get.put(ChatController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.primeryColor,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 30,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/josephdeo.png"),
                  fit:
                      BoxFit.fitHeight, // This will make the image fit properly
                ),
              ),
            ),
          ),
          title:
              const Text('Joseph Deo', style: TextStyle(color: Colors.white)),
          subtitle: Text('Online',
              style: TextStyle(color: Colors.white.withOpacity(0.7))),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(
                icon: const Icon(Icons.call, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                "TODAY",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.w300, // Setting the text color to grey
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: const [
                MessageRow(message: 'Hello', isMe: true, time: '08:04 pm'),
                MessageRow(message: 'Hello', isMe: false, time: '08:04 pm'),
                MessageRow(
                    message: 'Hello, are you nearby?',
                    isMe: true,
                    time: '08:04 pm'),
                MessageRow(
                    message: 'I\'ll be there in few min',
                    isMe: false,
                    time: '08:05 pm'),
                MessageRow(
                    message: 'I\'m in the location',
                    isMe: true,
                    time: '08:04 pm'),
              ],
            ),
          ),
          Column(
            children: [
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 70,
                      child: TextFormField(
                        style: const TextStyle(
                            color: Color.fromRGBO(37, 37, 37, 1),
                            fontFamily: "SF Pro Display"),
                        enableInteractiveSelection: true,
                        controller: controller.chatController,
                        showCursor: true,
                        autofocus: false,
                        cursorColor: Colors.black,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.0)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          hintText: "Ok...",
                          counterText: "",
                          hintStyle: TextStyle(
                            fontFamily: "SF Pro Display",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.275,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.primeryColor,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
