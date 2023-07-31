void main() {
  String text = "Hello! How are you?!";

  // Regular expression pattern to match a single exclamation mark
  final RegExp exclamationRegex = RegExp(r'!');

  // Find all matches of exclamation marks in the text
  Iterable<Match> matches = exclamationRegex.allMatches(text);

  // Print each match
  for (Match match in matches) {
    print("Found exclamation mark at index ${match.start}");
  }
}