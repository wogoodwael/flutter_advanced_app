
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:advanced_app/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_app/features/home/ui/widgets/speciality/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?>? specializationsDataList;
  SpecialityListView({super.key, required this.specializationsDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  int seletedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsDataList?.length ?? 0,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                seletedSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctors(
                specializationId:
                    widget.specializationsDataList?[index]?.id ?? 0,
              );
            },
            child: SpecialityListViewItem(
              specializationsDataList: widget.specializationsDataList,
              index: index,
              selectedIndex:seletedSpecializationIndex
            ),
          );
        },
      ),
    );
  }
}

