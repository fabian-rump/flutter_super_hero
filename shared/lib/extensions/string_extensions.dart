extension StringExtensions on String? {
  toNonNullString() => this ?? "";
}
