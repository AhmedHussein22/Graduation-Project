import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tot/core/models/data_base_json.dart';
import 'package:tot/utils/colors.dart';

class SliderWithIndicator extends StatefulWidget {
  final bool isVideo;

  SliderWithIndicator({this.isVideo = false});

  @override
  _SliderWithIndicatorState createState() => _SliderWithIndicatorState();
}

class _SliderWithIndicatorState extends State<SliderWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
 

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = DataBaseJson.sliderImages
        .map(
          (item) => Container(
            height: ScreenUtil().screenHeight * 0.23,
            width: ScreenUtil().screenWidth,
            color: OFF_WHITE_COLOR,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    item,
                    height: ScreenUtil().screenHeight * 0.23,
                    width: ScreenUtil().screenWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                widget.isVideo?
                Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      "assets/icons/play_video.svg",
                    ),):Container(),
              ],
            ),
          ),
        )
        .toList();
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          
          options: CarouselOptions(
            autoPlay: true,
              height: ScreenUtil().screenHeight * 0.25,
             
              disableCenter: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: DataBaseJson.sliderImages.asMap().entries.map((entry) {
          return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == entry.key ? GREEN_COLOR : GRAY_COLOR,
                  )));
        }).toList(),
      ),
    ]);
  }
}
