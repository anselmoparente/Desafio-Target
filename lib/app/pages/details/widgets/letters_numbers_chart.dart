import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/theme/app_typography.dart';
import 'package:target/app/core/widgets/ds_card.dart';

class LettersNumbersChart extends StatelessWidget {
  final int letters;
  final int numbers;

  const LettersNumbersChart({
    super.key,
    required this.letters,
    required this.numbers,
  });

  double get _total => (letters + numbers).toDouble();

  double get _lettersPercent => _total == 0 ? 0 : (letters / _total) * 100;

  double get _numbersPercent => _total == 0 ? 0 : (numbers / _total) * 100;

  @override
  Widget build(BuildContext context) {
    return DSCard(
      child: Column(
        spacing: AppSpacing.md,
        children: [
          Text('Distribuição de caracteres', style: AppTypography.title),
          SizedBox(
            height: 240,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 100,
                barGroups: [
                  _barGroup(0, _lettersPercent, AppColors.info),
                  _barGroup(1, _numbersPercent, AppColors.secondary),
                ],
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: _bottomTitle,
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      getTitlesWidget: _topTitle,
                    ),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData _barGroup(int x, double percent, Color color) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: percent,
          width: 28,
          color: color,
          borderRadius: BorderRadius.circular(8),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 100,
            color: AppColors.border.withOpacity(0.2),
          ),
        ),
      ],
    );
  }

  Widget _bottomTitle(double value, TitleMeta meta) {
    switch (value.toInt()) {
      case 0:
        return Text('Letras', style: AppTypography.body);
      case 1:
        return Text('Números', style: AppTypography.body);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _topTitle(double value, TitleMeta meta) {
    final percent = value.toInt() == 0 ? _lettersPercent : _numbersPercent;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text('${percent.toStringAsFixed(0)}%', style: AppTypography.body),
    );
  }
}
