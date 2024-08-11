import 'package:flutter/material.dart';

import '../cubit/epub_viewer_cubit.dart';

class EpubSeekbar extends StatefulWidget {

  EpubSeekbar(
      {required this.currentPage,
        required this.allPagesCount,
        required this.epubViewerCubit,
        super.key,});
  double currentPage;
  double allPagesCount;
  EpubViewerCubit epubViewerCubit;

  @override
  _EpubSeekbarState createState() => _EpubSeekbarState();
}

class _EpubSeekbarState extends State<EpubSeekbar> {
  double _currentValue = 0;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.currentPage;
  }

  @override
  Widget build(BuildContext context) => Slider(
      value: _currentValue,
      onChangeEnd: (newValue) {
        widget.epubViewerCubit.jumpToPage(newPage: newValue.toInt());
      },
      onChanged: (newValue) {
        setState(() {
          _currentValue = newValue;
        });
      },
      max: widget.allPagesCount,
      min: 0,
    );
}
