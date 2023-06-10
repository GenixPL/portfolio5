import 'package:equatable/equatable.dart';

class GithubContributionCalendar with EquatableMixin {
  const GithubContributionCalendar({
    required this.totalContributions,
  });

  final int totalContributions;

  @override
  List<Object?> get props {
    return <Object?>[
      totalContributions,
    ];
  }
}
