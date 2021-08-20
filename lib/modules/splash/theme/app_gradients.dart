import 'dart:math';

import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get backgraoud;
}

class AppGradientsDefault implements AppGradients {
  @override
  Gradient get backgraoud => LinearGradient(
        colors: [
          Color(0xff40B38C),
          Color(0xff45CC93),
        ],
        transform: GradientRotation(2.35619 * pi),
      );
}
