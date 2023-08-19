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
    this.radius = 24,
    this.foregroundImage,
  });

  factory VKCircleAvatar.fromUser(User user, {double radius = 24}) {
    return user.avatarPath != null
        ? VKCircleAvatar(
            foregroundImage: AssetImage(
              user.avatarPath!,
            ),
            radius: radius,
          )
        : VKCircleAvatar.noImage(radius: radius);
  }

  factory VKCircleAvatar.noImage({double radius = 24}) => VKCircleAvatar(
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

  factory VKCircleAvatar.group({
    Widget? child,
    Color? color,
  }) =>
      VKCircleAvatar(
        radius: 32,
        backgroundColor: color ?? Colors.blueGrey.shade100,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundImage: foregroundImage,
      radius: radius,
      child: child,
    );
  }
}
