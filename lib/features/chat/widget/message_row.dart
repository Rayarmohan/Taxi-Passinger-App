import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

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
        Padding(
          padding: isMe? const EdgeInsets.only(right:8.0) :const EdgeInsets.only(left:8.0),
          child: Row(
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
        ),
      ],
    );
  }
}