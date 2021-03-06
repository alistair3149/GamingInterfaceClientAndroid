import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gic_flutter/src/backend/models/screen/viewModels/controlViewModel.dart';

import '../screen.dart';

class ScreenViewModel {
    int screenId = -1;
    String name;
    List<ControlViewModel> controls = new List<ControlViewModel>();
    int newControlId = -1;
    Color backgroundColor;
    String backgroundPath;

    ScreenViewModel();

    factory ScreenViewModel.fromModel(Screen model, double pixelRatio) {
        ScreenViewModel rv = new ScreenViewModel();
        rv.screenId = model.screenId;
        rv.name = model.name;
        model.controls.forEach((element) {
            rv.controls.add(new ControlViewModel.fromModel(element, pixelRatio));
        });
        rv.newControlId = model.newControlId;

        if (model.backgroundColor == -1)
            rv.backgroundColor = Colors.black;
        else
            rv.backgroundColor = _convertJavaColor(model.backgroundColor);
        rv.backgroundPath = model.backgroundPath;
        return rv;
    }

    /// Convert legacy java color to Flutter Color
    static Color _convertJavaColor (int legacyColor) {
        return Color(legacyColor);
    }
}
