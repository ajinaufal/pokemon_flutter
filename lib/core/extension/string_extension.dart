extension StringExtension on String {
  String get capitalizeFirst => isNotEmpty
      ? split(' ')
          .map((e) => e[0].toUpperCase() + e.substring(1))
          .toList()
          .join(' ')
      : '';
}
