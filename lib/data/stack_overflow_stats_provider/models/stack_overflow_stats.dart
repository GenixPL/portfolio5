import 'package:equatable/equatable.dart';

class StackOverflowStats with EquatableMixin {
  const StackOverflowStats({
    required this.bronzeBadges,
    required this.silverBadges,
    required this.goldBadges,
    required this.reputation,
  });

  final int bronzeBadges;
  final int silverBadges;
  final int goldBadges;
  final int reputation;

  @override
  List<Object?> get props {
    return <Object?>[
      bronzeBadges,
      silverBadges,
      goldBadges,
      reputation,
    ];
  }
}
