class StringHelper {
  String capitalize({required String word, bool? split}) => (split ?? false)
      ? word
          .split(' ')
          .map((w) => w[0].toUpperCase() + w.substring(1))
          .toList()
          .join(' ')
      : word[0].toUpperCase() + word.substring(1);
}
