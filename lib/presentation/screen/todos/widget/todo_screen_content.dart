import 'package:clean_arch_sample/core/arch/widget/common/misk.dart';
import 'package:clean_arch_sample/presentation/screen/todos/bloc/todos_bloc_imports.dart';
import 'package:clean_arch_sample/presentation/screen/todos/widget/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoScreenContent extends StatelessWidget {
  const TodoScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: SearchView(
            onSearchChanged: (query) {
              context
                  .read<TodosBloc>()
                  .add(TodosScreenEvent.onSearch(query: query));
            },
          ),
        ),
        ClickableWidget(
          onTap: () {
            context.read<TodosBloc>().add(TodosScreenEvent.getTime());
          },
          child: Padding(
            padding: EdgeInsets.all(8.0.w),
            child: const Icon(Icons.access_time_outlined),
          ),
        ),
        Delimiter.width(10.w),
      ],
    );
  }
}
