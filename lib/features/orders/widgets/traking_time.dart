class TrackingItem {
  final String title;
  final String time;
  final bool isActive;

  const TrackingItem({
    required this.title,
    required this.time,
    this.isActive = false,
  });
}
