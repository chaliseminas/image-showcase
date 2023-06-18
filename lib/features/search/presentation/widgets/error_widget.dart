import 'package:flutter/material.dart';

class FetchErrorWidget extends StatelessWidget {

  final Function onTap;
  const FetchErrorWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Something went wrong. Please try again.",
            style: TextStyle(
              color: Colors.red
            ),
          ),
          const SizedBox(height: 12.0),
          ElevatedButton(
            onPressed: () => onTap.call(),
            child: const Text("Try Again"),
          )
        ],
      ),
    );
  }
}
