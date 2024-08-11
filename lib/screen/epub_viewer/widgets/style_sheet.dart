import 'package:flutter/material.dart';

import '../../../model/style_model.dart';
import '../cubit/epub_viewer_cubit.dart';

class StyleSheet extends StatefulWidget {

  const StyleSheet({
    super.key,
    required this.epubViewerCubit,
    required this.fontSize,
    required this.fontFamily,
    required this.lineSpace,
  });
  final EpubViewerCubit epubViewerCubit;
  final FontSizeCustom fontSize;
  final FontFamily fontFamily;
  final LineHeightCustom lineSpace;

  @override
  State<StyleSheet> createState() => _StyleSheetState();
}

class _StyleSheetState extends State<StyleSheet> {
  late int _selectedChipIndex;
  late FontSizeCustom fontSizeCustom;
  late FontFamily fontFamily;
  late LineHeightCustom lineSpace;
  late double _fontSizeSliderValue;
  late double _lineHeightSliderValue;

  @override
  void initState() {
    super.initState();
    fontSizeCustom = widget.fontSize;
    fontFamily = widget.fontFamily;
    lineSpace = widget.lineSpace;
    _fontSizeSliderValue = fontSizeToSliderValue(widget.fontSize);
    _lineHeightSliderValue = lineSpaceToSliderValue(widget.lineSpace);
    _selectedChipIndex = FontFamily.values.indexOf(widget.fontFamily);
  }

  void _handleChipSelection(int index) {
    setState(() {
      _selectedChipIndex = index;
    });
    fontFamily = FontFamily.values[index];
    widget.epubViewerCubit.changeStyle(
      fontSize: fontSizeCustom,
      lineSpace: lineSpace,
      fontFamily: fontFamily,
    );
  }

  double fontSizeToSliderValue(FontSizeCustom fontSize) {
    // Assuming FontSizeCustom enum values are ordered from smallest to largest
    return fontSize.index / (FontSizeCustom.values.length - 1);
  }

  double lineSpaceToSliderValue(LineHeightCustom lineSpace) {
    // Assuming LineHeightCustom enum values are ordered from smallest to largest
    return lineSpace.index / (LineHeightCustom.values.length - 1);
  }

  void _handleFontSizeSliderChange(double newValue) {
    setState(() {
      _fontSizeSliderValue = newValue;
    });
    fontSizeCustom = FontSizeCustom.values[(newValue * (FontSizeCustom.values.length - 1)).round()];
    widget.epubViewerCubit.changeStyle(
      fontSize: fontSizeCustom,
      lineSpace: lineSpace,
      fontFamily: fontFamily,
    );
  }

  void _handleLineHeightSliderChange(double newValue) {
    setState(() {
      _lineHeightSliderValue = newValue;
    });
    lineSpace = LineHeightCustom.values[(newValue * (LineHeightCustom.values.length - 1)).round()];
    widget.epubViewerCubit.changeStyle(
      fontSize: fontSizeCustom,
      lineSpace: lineSpace,
      fontFamily: fontFamily,
    );
  }

  final Color _selectedColor = Colors.black; // Default color


  @override
  Widget build(BuildContext context) => Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 16),
            // Text(
            //   'Text setting wizard',
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 26),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Column(
            //       children: [
            //         IconButton(
            //           icon: Icon(Icons.contrast),
            //           onPressed: () {
            //
            //           },
            //         ),
            //         const Text(
            //           'High Contrast',
            //           style: TextStyle(fontSize: 10),
            //         ),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         IconButton(
            //           icon: Icon(Icons.dark_mode),
            //           onPressed: () {
            //
            //           },
            //         ),
            //         Text(
            //           'Dark Mode',
            //           style: TextStyle(fontSize: 10),
            //         ),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         IconButton(
            //           icon: Icon(Icons.zoom_out_map),
            //           onPressed: () {
            //             _handleFontSizeSliderChange(0.8);
            //             _handleLineHeightSliderChange(0.8);
            //           },
            //         ),
            //         Text(
            //           'More readability',
            //           style: TextStyle(fontSize: 10),
            //         ),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         IconButton(
            //           icon: Icon(Icons.article),
            //           onPressed: () {
            //           },
            //         ),
            //         Text(
            //           'High Contrast',
            //           style: TextStyle(fontSize: 10),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // SizedBox(height: 18,),
            // Divider(), // Add a divider here

            const SizedBox(height: 18,),
             Padding(padding: const EdgeInsets.only(right: 26, left: 26),
            child: Text('إعدادات النص', style: Theme.of(context).textTheme.titleMedium),
            ),
             const SizedBox(height: 18), // Add spacing before the Chip widgets

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     InputChip(
            //       label: Text('خط ١'),
            //       selected: _selectedChipIndex == 0,
            //       onSelected: (isSelected) {
            //         _handleChipSelection(isSelected ? 0 : -1);
            //       },
            //     ),
            //     InputChip(
            //       label: Text('خط ٢'),
            //       selected: _selectedChipIndex == 1,
            //       onSelected: (isSelected) {
            //         _handleChipSelection(isSelected ? 1 : -1);
            //       },
            //     ),
            //     InputChip(
            //       label: Text('خط ٣'),
            //       selected: _selectedChipIndex == 2,
            //       onSelected: (isSelected) {
            //         _handleChipSelection(isSelected ? 2 : -1);
            //       },
            //     ),
            //     InputChip(
            //       label: Text('خط ٤'),
            //       selected: _selectedChipIndex == 3,
            //       onSelected: (isSelected) {
            //         _handleChipSelection(isSelected ? 3 : -1);
            //       },
            //     ),
            //     InputChip(
            //       label: Text('خط ٥'),
            //       selected: _selectedChipIndex == 4,
            //       onSelected: (isSelected) {
            //         _handleChipSelection(isSelected ? 4 : -1);
            //       },
            //     ),
            //   ],
            // ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Slider(
                    divisions: FontSizeCustom.values.length - 1,
                    value: _fontSizeSliderValue,
                    onChanged: _handleFontSizeSliderChange,
                  ),
                ),
                const Icon(Icons.text_increase, size: 18, color: Colors.grey,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Slider(
                    divisions: LineHeightCustom.values.length - 1,
                    value: _lineHeightSliderValue,
                    onChanged: _handleLineHeightSliderChange,
                  ),
                ),
                const Icon(Icons.format_line_spacing, size: 18, color: Colors.grey,),
              ],
            ),
            // IconButton(
            //   icon: Icon(Icons.color_lens),
            //   onPressed: _showColorPicker,
            // ),
          ],
        ),


      ),
    );
}
