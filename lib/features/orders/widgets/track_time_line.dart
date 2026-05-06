import 'package:flutter/cupertino.dart';
import 'package:newfashionstore/features/orders/widgets/time_line_tile.dart';
import 'package:newfashionstore/features/orders/widgets/traking_time.dart';

class TrackingTimeline extends StatelessWidget {
  const TrackingTimeline({super.key});

  final List<TrackingItem> items = const [
    TrackingItem(
      title: 'Parcel is successfully delivered',
      time: '15 May 10:20',
      isActive: true,
    ),
    TrackingItem(
      title: 'Parcel is out for delivery',
      time: '14 May 08:00',
    ),
    TrackingItem(
      title: 'Parcel is received at delivery Branch',
      time: '13 May 17:25',
    ),
    TrackingItem(
      title: 'Parcel is in transit',
      time: '13 May 07:00',
    ),
    TrackingItem(
      title: 'Sender has shipped your parcel',
      time: '12 May 14:25',
    ),
    TrackingItem(
      title: 'Sender is preparing to ship your order',
      time: '12 May 10:01',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TimelineTile(
          item: items[index],
          isLast: index == items.length - 1,
        );
      },
    );
  }
}
