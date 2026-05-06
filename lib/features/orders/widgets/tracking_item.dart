class _TrackingItem {
  final String title;
  final String time;
  final bool isActive;

  const _TrackingItem({
    required this.title,
    required this.time,
    this.isActive = false,
  });
}
