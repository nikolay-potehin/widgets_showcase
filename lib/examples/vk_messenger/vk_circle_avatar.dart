import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';

class VKCircleAvatar extends StatelessWidget {
  final ImageProvider<Object>? foregroundImage;
  final Color? backgroundColor;
  final Widget? child;
  final double? radius;

  const VKCircleAvatar({
    super.key,
    this.child,
    this.backgroundColor,
    this.radius,
    this.foregroundImage,
  });

  factory VKCircleAvatar.fromUser(User user) {
    return user.avatarPath != null
        ? VKCircleAvatar(
            foregroundImage: AssetImage(
              user.avatarPath!,
            ),
          )
        : VKCircleAvatar.noImage();
  }

  factory VKCircleAvatar.noImage({double radius = 20}) => VKCircleAvatar(
        backgroundColor: Colors.blueGrey.shade100,
        radius: radius,
        child: Icon(
          Icons.camera_alt,
          color: Colors.blueGrey.shade300,
          size: radius * 1.2,
        ),
      );

  factory VKCircleAvatar.call() => const VKCircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.call,
          color: Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundImage: foregroundImage,
      radius: radius,
      child: child ?? const Icon(Icons.photo_camera),
    );
  }
}
