import 'package:flutter/material.dart';

class HeartSliverAppBar extends StatelessWidget {
  final ScrollController controller;

  const HeartSliverAppBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: true,
      expandedHeight: 169,
      flexibleSpace: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? child) {
          final double factor =
              1 - (controller.offset / (169 + kToolbarHeight));
          return Opacity(
            opacity: factor,
            child: SizedBox(
                height: (169 + kToolbarHeight) - controller.offset,
                child: child!),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(top: kToolbarHeight),
          child: Image.asset(
            "assets/images/heart_sliver_image.png",
            width: MediaQuery.of(context).size.height,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      title: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? child) {
          final double factor = controller.offset / (169 + kToolbarHeight);
          return Opacity(
            opacity: factor,
            child: Transform.scale(scale: factor, child: child!),
          );
        },
        child: Text(
          'We Diseasefree',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
