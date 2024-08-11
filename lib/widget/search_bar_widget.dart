import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWiget extends StatefulWidget {

  const SearchBarWiget({
    super.key,
    this.onClicked,
    this.onClickedMic,
    this.query,
    this.hint,
    this.onChanged,
  });
  final Function(String)? onClicked;
  final Function(String)? onChanged;
  final Function? onClickedMic;
  final String? query;
  final String? hint;

  @override
  State<SearchBarWiget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWiget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = widget.query ?? '';
  }

  @override
  Widget build(BuildContext context) => Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).colorScheme.onPrimary,
            // Adjust the color to match your UI design
            hintText: widget.hint ?? 'أدخل كلمة لبدء البحث',
            hintStyle: TextStyle(fontSize: 12, color: Colors.grey[600]),
            // Your hint text in Arabic
            prefixIcon: IconButton(
              icon: SvgPicture.asset(
                'assets/icon/search.svg',
                color: Colors.grey[600], // Adjust the color as needed
                width: 20, // Adjust the size as needed
                height: 20, // Adjust the size as needed
              ),
              onPressed: () {
                if (_searchController.text.isNotEmpty) {
                  if (widget.onClicked != null) {
                    widget.onClicked!(_searchController.text);
                  }
                }
              },
            ),
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
              icon: Icon(Icons.clear, color: Colors.grey[600], size: 18,),
              onPressed: () {
                setState(() {
                  _searchController.clear();
                  if (widget.onChanged != null) {
                    widget.onChanged!('');
                  }
                });
              },
            )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none, // No border
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          ),
          onChanged: (value) {
            setState(() {}); // Update the UI to show/hide the suffix icon
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          onSubmitted: (value) {
            if (widget.onClicked != null) {
              widget.onClicked!(value);
            }
          },
        ),
      ),
    );
}
