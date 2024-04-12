import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_images.dart';
import '../../widgets/custom_text_field.dart';


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
          title: const Text('Joseph Deo', style: TextStyle(color: Colors.white)),
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
            child: Text(
              "Today",
              style: TextStyle(
                color: Colors.grey[200], fontWeight: FontWeight.w300,  // Setting the text color to grey
              ),
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: const [
                MessageRow(message: 'Hello', isMe :true,time:  '08:04 pm'),
                MessageRow(message: 'Hello',isMe:  false,time:  '08:04 pm'),
                MessageRow(message: 'Hello, are you nearby?',isMe:  true,time:  '08:04 pm'),
                MessageRow(message: 'I\'ll be there in few min',isMe:  true,time:  '08:05 pm'),
                MessageRow(message: 'I\'m in the location',isMe:  false,time:  '08:04 pm'),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 70,
                  child: CustomTextFieldInt(
                    keyboardType: TextInputType.multiline,
                    controller: controller.chatController,
                    hint: 'Ok....',
                  ),
                ),
              ),
              const SizedBox(width: 5,),
              CircleAvatar(
                backgroundColor: AppColors.primeryColor,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ChatController extends GetxController {
  TextEditingController chatController = TextEditingController();
}

class MessageRow extends StatelessWidget {
  final String message;
  final bool isMe;
  final String time;

  const MessageRow({super.key, required this.message, required this.isMe, required this.time});

  @override
  Widget build(BuildContext context) {
    final align = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final textAlign = isMe ? TextAlign.end : TextAlign.start;

    return Column(
      crossAxisAlignment: align,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          margin: EdgeInsets.only(
              top: 5, bottom: 5, right: isMe ? 10 : 0, left: isMe ? 0 : 10),
          decoration: BoxDecoration(
            color: AppColors.primeryColor,
            borderRadius: isMe
                ? const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )
                : const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: align,
            children: [
              Text(
                message,
                textAlign: textAlign,
                style: const TextStyle(color: AppColors.white),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
        Row(
          mainAxisAlignment:
          isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 10,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(isMe ? "assets/images/propic.png" : "assets/images/josephdeo.png"),
                    fit: BoxFit.fitHeight, // This will make the image fit properly
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(isMe ? "Jessica" : "Joseph",
                style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 5,
            ),
            Text(time,
                style: const TextStyle(fontSize: 10), textAlign: textAlign),
          ],
        ),
      ],
    );
  }
}