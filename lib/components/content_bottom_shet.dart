import 'package:boring_app/themes/boring_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentBottomSheetWidget extends StatelessWidget {
  final String? title;
  final Widget? content;
  final bool isScrollable;
  final bool hasPaddingCancelButton;

  const ContentBottomSheetWidget({
    super.key,
    this.title,
    this.content,
    this.isScrollable = false,
    this.hasPaddingCancelButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        physics: isScrollable ? const AlwaysScrollableScrollPhysics() : const NeverScrollableScrollPhysics(),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 16.w, bottom: 10.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ]),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 5.w,
                          width: 48.w,
                          decoration: BoxDecoration(
                            color: const BoringColors().mainColor,
                            borderRadius: BorderRadius.circular(35.r),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.w,
                      ),
                      if (title != null && title!.isNotEmpty) ...[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 48.w),
                          child: Text(title!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.w,
                                  color: const BoringColors().primaryTextColor,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                      content ?? Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
