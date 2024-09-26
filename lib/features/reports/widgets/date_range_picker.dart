import 'package:flutter/material.dart';

class DateRangePicker extends StatefulWidget {
  const DateRangePicker({super.key});

  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  DateTimeRange? selectedDateRange;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          selectedDateRange == null
            ? 'Выберите диапазон дат'
            : 'С ${selectedDateRange!.start.toString().substring(0, 10)} по ${selectedDateRange!.end.toString().substring(0, 10)}',
          style: TextStyle(
            color: theme.secondaryHeaderColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        // Кнопка для выбора диапазона дат
        ElevatedButton(
          onPressed: () async {
            // Открытие встроенного выбора диапазона дат
            DateTimeRange? picked = await showDateRangePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              initialDateRange: selectedDateRange,
            );

            // Если пользователь выбрал диапазон, обновляем состояние
            if (picked != null) {
              setState(() {
                selectedDateRange = picked;
              });
            }
          },
          child: const Text('Выбрать даты'),
        )
      ],
    );
  }
}