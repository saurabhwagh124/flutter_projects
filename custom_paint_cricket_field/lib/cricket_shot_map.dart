library cricket_run_map;

import 'dart:developer';
import 'dart:math' as m;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cricket_map_painter.dart';

class CricketRunMap extends StatefulWidget {
  final double width;
  final double height;
  final bool isRightHand;
  final void Function(String) onPositionSelected;

  const CricketRunMap({
    super.key,
    required this.width,
    required this.height,
    this.isRightHand = true,
    required this.onPositionSelected,
  });

  @override
  State<CricketRunMap> createState() => _CricketRunMapState();
}

class _CricketRunMapState extends State<CricketRunMap> {
  final List<String> rightHandPositionNames = [
    'Deep Mid\nWicket',
    'Long On',
    'Long Off',
    'Deep Cover',
    'Deep Point',
    'Deep\nThird Man',
    'Deep\nFine Leg',
    'Deep\nSquare Leg',
  ];

  final List<String> rightHandMidPositionNames = [
    'Mid Wicket',
    'Mid On',
    'Mid Off',
    'Mid Cover',
    'Mid Point',
    'Third Man',
    'Mid\nFine\nLeg',
    'Mid\nSquare\nLeg',
  ];

  final List<String> leftHandPositionNames = [
    'Deep Cover',
    'Long Off',
    'Long On',
    'Deep Mid\nWicket',
    'Deep\nSquare Leg',
    'Deep\nFine Leg',
    'Deep\nThird Man',
    'Deep Point',
  ];

  final List<String> leftHandMidPositionNames = [
    'Mid Cover',
    'Mid Off',
    'Mid On',
    'Mid Wicket',
    'Mid\nSquare\nLeg',
    'Mid\nFine\nLeg',
    'Third Man',
    'Mid Point'
  ];

  Offset? tapPoint;
  int? selectedPosition;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        // log("widget width: ${widget.width}, widget height: ${widget.height}");
        // log("widget width/4 - 6: ${widget.width/4-6}");
        setState(() {
          tapPoint = details.localPosition;
          // log("tapPoint: $tapPoint, dx: ${tapPoint!.dx}, dy: ${tapPoint!.dy}");
          if (tapPoint != null) {
            final dx = tapPoint!.dx - (widget.width / 2);
            final dy = tapPoint!.dy - (widget.height / 2);
            log("dy: $dy, dx: $dx");
            final angle = m.atan2(dy, dx);
            const sliceAngle = 2 * m.pi / 8;
            double normalizedAngle = angle < 0 ? (2 * m.pi + angle) : angle;
            normalizedAngle = (normalizedAngle + (4 * m.pi / 2)) % (2 * m.pi);
            selectedPosition = (normalizedAngle / sliceAngle).floor();
            log("$selectedPosition");
            
            // Call the callback with the selected position name
            if (widget.isRightHand == true) {
              if(dx.abs()>widget.width / 4.2 - 6 || dy.abs()>widget.height / 4.2 - 6){
                log("In outer field");
                widget.onPositionSelected.call(
                    rightHandPositionNames[selectedPosition!]
                        .replaceAll("\n", " "));
              }else{
                log("In inner field");
                widget.onPositionSelected.call(
                  rightHandMidPositionNames[selectedPosition!]
                      .replaceAll("\n", "")
                );
              }
            } else {
              if(dx.abs()>widget.width / 4.2 - 6 || dy.abs()>widget.height / 4.2 - 6){
                log("In outer field");
                widget.onPositionSelected.call(
                    leftHandPositionNames[selectedPosition!]
                        .replaceAll("\n", " "));
              }else{
                log("In inner field");
                widget.onPositionSelected.call(
                  leftHandMidPositionNames[selectedPosition!]
                      .replaceAll("\n", "")
                );
              }
            }
          }
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(83, 145, 101, 1),
          // border: Border.all(
          //   width: 3,
          //   color: const Color(0xFFFF9800),
          // ),
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
          ),
          child: Stack(
            children: [
              CustomPaint(
                size: Size(widget.width, widget.height),
                painter: RunMapPainter(
                    widget.isRightHand
                        ? rightHandPositionNames
                        : leftHandPositionNames,
                      widget.isRightHand
                        ? rightHandMidPositionNames
                        : leftHandMidPositionNames,
                    tapPoint: tapPoint,
                    selectedPosition: selectedPosition),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Transform.translate(
                        offset: const Offset(0, -10),
                        child: Container(
                          alignment: Alignment.center,
                          child: widget.isRightHand
                              ? const Text("OFF",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))
                              : const Text("LEG",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: widget.height * 0.2,
                      color: const Color.fromRGBO(180, 255, 161, 1),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          // width: 25,
                          // height: 25,
                          child: widget.isRightHand
                              ? SvgPicture.asset("assets/batsman.svg", fit: BoxFit.cover,)
                              : Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(m.pi),
                                  child:  SvgPicture.asset("assets/batsman.svg", fit: BoxFit.cover,)
                              )
                      )
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: const Offset(0, -10),
                        child: Container(
                          alignment: Alignment.center,
                          child: widget.isRightHand
                              ? const Text("LEG",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))
                              : const Text("OFF",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}