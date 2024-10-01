import 'package:flutter/material.dart';

class DateRangePicker extends StatefulWidget {
  final double fontSize;

  const DateRangePicker({
    this.fontSize = 16,
    super.key,
  });

  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  DateTimeRange? selectedDateRange;

  @override
  Widget build(BuildContext context) {
    const selectRangeTitle = 'Выберите диапазон дат';
    const sizedBoxHeight = 10.0;

    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: sizedBoxHeight,
        ),
        _dateTitle(theme, selectRangeTitle),
        const SizedBox(height: sizedBoxHeight),
        _dateRangeButton(
          theme,
          context,
        ),
        const SizedBox(height: sizedBoxHeight),
      ],
    );
  }

  Container _dateTitle(
    ThemeData theme,
    String selectRangeTitle, [
    double width = 300,
    double height = 50,
    double borderRadius = 16,
  ]) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      alignment: Alignment.center,
      child: Text(
        selectedDateRange == null
            ? selectRangeTitle
            : '${selectedDateRange!.start.toString().substring(0, 10)} по ${selectedDateRange!.end.toString().substring(0, 10)}',
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: widget.fontSize,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  ElevatedButton _dateRangeButton(
    ThemeData theme,
    BuildContext context, [
    int firstDate = 2000,
    int lastDate = 2100,
    double fontSize = 16,
    double opacity = 0.8,
    double borderRadius = 8,
    double width = 230,
    double height = 50,
  ]) {
    const selectDateTitle = 'Выбрать даты';

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColor.withOpacity(
          opacity,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        minimumSize: Size(width, height),
      ),
      onPressed: () async {
        DateTimeRange? picked = await showDateRangePicker(
          context: context,
          firstDate: DateTime(firstDate),
          lastDate: DateTime(lastDate),
          initialDateRange: selectedDateRange,
        );
        if (picked != null) {
          setState(() {
            selectedDateRange = picked;
          });
        }
      },
      child: Text(
        selectDateTitle,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
