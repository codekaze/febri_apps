import 'package:flutter/material.dart';
import 'dart:math' as math;

class ProfileApi {
  static get() async {
    return [
      {
        "name": "Eby Ann",
        "profile_picture_background_color":
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0)
      },
      {
        "name": "Risa Levin",
        "profile_picture_background_color":
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0)
      },
      {
        "name": "Dane White",
        "profile_picture_background_color":
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0)
      },
      {
        "name": "Elleana",
        "profile_picture_background_color":
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0)
      },
      {
        "name": "Gray B.",
        "profile_picture_background_color":
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0)
      },
    ];
  }
}



// CircleAvatar(
//   radius: 40,
//   backgroundColor: profile[index]["profile_picture_background_color"],
//   child: Center(
//     child: Text(
//       '${profile[index]["name"][0]}',
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 25,
//       ),
//     ),
//   ),
// )