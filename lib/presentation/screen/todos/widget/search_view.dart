import 'package:clean_arch_sample/presentation/style/theme/theme_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatefulWidget {
  final ValueChanged<String> onSearchChanged;

  const SearchView({required this.onSearchChanged, super.key});

  @override
  State<StatefulWidget> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final _searchController = TextEditingController();
  final _searchNode = FocusNode();
  bool _showClearButton = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
      child: Stack(
        children: [
          TextField(
            onChanged: (value) {
              widget.onSearchChanged(value);
              setState(() {
                _showClearButton = value.isNotEmpty;
              });
            },
            controller: _searchController,
            maxLines: 1,
            focusNode: _searchNode,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(right: 60.w, left: 10.w),
              hintText: 'Search for Todos...',
              hintStyle: context.themeTextStyles.caption14,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(
                  14.sm,
                ),
              ),
            ),
          ),
          if (_showClearButton)
            Positioned(
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: GestureDetector(
                onTap: _onClearButtonTap,
                child: SizedBox(
                  height: 56.h,
                  width: 56.h,
                  child: const Icon(Icons.clear),
                ),
              ),
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }

  void _onClearButtonTap() {
    widget.onSearchChanged('');
    _searchController.clear();
    _searchNode.unfocus();
    setState(() {
      _showClearButton = false;
    });
  }
}
