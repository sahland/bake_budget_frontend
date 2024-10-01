import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class ReportButtons extends StatefulWidget {
  final List<double> orderChartValues;
  final List<double> incomeChartValues;
  final int duration;

  const ReportButtons({
    required this.orderChartValues,
    required this.incomeChartValues,
    this.duration = 300,
    super.key,
  });

  @override
  State<ReportButtons> createState() => _ReportButtonsState();
}

class _ReportButtonsState extends State<ReportButtons> {
  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    const List<String> orderChartLabels = ['Принято', 'Завершено', 'Отменено'];
    const List<String> incomeChartLabels = ['Расходы', 'Доходы'];

    const ordersTitle = 'Заказы';
    const incomeTitle = 'Доходы';
    const sizedBoxWidth = 10.0;
    const sizedBoxHeight = 20.0;

    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(theme, ordersTitle, !_isSelect, () {
              setState(() {
                _isSelect = false;
              });
            }),
            const SizedBox(
              width: sizedBoxWidth,
            ),
            _buildButton(theme, incomeTitle, _isSelect, () {
              setState(() {
                _isSelect = true;
              });
            }),
          ],
        ),
        const SizedBox(height: sizedBoxHeight),
        AnimatedSwitcher(
          duration: Duration(milliseconds: widget.duration),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: _buildChart(
            theme,
            orderChartLabels,
            incomeChartLabels,
          ),
        ),
      ],
    );
  }

  Widget _buildButton(
    ThemeData theme,
    String title,
    bool isActive,
    VoidCallback? onPressed, [
    double fontSize = 16,
  ]) {
    const opacity = 0.5;
    const elevation = 10.0;

    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive
            ? theme.primaryColor
            : theme.primaryColor.withOpacity(opacity),
        elevation: elevation,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildChart(
    ThemeData theme,
    List<String> orderChartLabels,
    List<String> incomeChartLabels, [
    double elevation = 8,
    double borderRadius = 20,
    double height = 400,
  ]) {
    const horizontalPadding = 16.0;
    const verticalPadding = 8.0;

    final maxOrderValue = widget.orderChartValues.isNotEmpty
        ? widget.orderChartValues.reduce((a, b) => a > b ? a : b)
        : 0;
    final maxIncomeValue = widget.incomeChartValues.isNotEmpty
        ? widget.incomeChartValues.reduce((a, b) => a > b ? a : b)
        : 0;

    return Card(
      key: ValueKey(_isSelect),
      color: theme.cardColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Padding(
        padding: const EdgeInsets.all(horizontalPadding),
        child: SizedBox(
          height: height,
          child: _isSelect
              ? BaseChart(
                  maxY: maxIncomeValue * 1.2,
                  barTouchData:
                      _setupChart(incomeChartLabels, widget.incomeChartValues)
                          .barTouchData,
                  titlesData:
                      _setupChart(incomeChartLabels, widget.incomeChartValues)
                          .titlesData,
                  borderData:
                      _setupChart(incomeChartLabels, widget.incomeChartValues)
                          .borderData,
                  barGroups:
                      _setupChart(incomeChartLabels, widget.incomeChartValues)
                          .barGroups,
                  xLabels: incomeChartLabels,
                  yValues: widget.incomeChartValues,
                )
              : BaseChart(
                  maxY: maxOrderValue * 1.2,
                  barTouchData:
                      _setupChart(orderChartLabels, widget.orderChartValues)
                          .barTouchData,
                  titlesData:
                      _setupChart(orderChartLabels, widget.orderChartValues)
                          .titlesData,
                  borderData:
                      _setupChart(orderChartLabels, widget.orderChartValues)
                          .borderData,
                  barGroups:
                      _setupChart(orderChartLabels, widget.orderChartValues)
                          .barGroups,
                  xLabels: orderChartLabels,
                  yValues: widget.orderChartValues,
                ),
        ),
      ),
    );
  }

  BarChartSetup _setupChart(List<String> labels, List<double> values) {
    return BarChartSetup(
      xLabels: labels,
      yValues: values,
    );
  }
}
