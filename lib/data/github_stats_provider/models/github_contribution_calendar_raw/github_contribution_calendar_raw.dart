import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio5/data/_data.dart';

part 'github_contribution_calendar_raw.g.dart';

@JsonSerializable()
class GithubContributionCalendarRaw with EquatableMixin {
  const GithubContributionCalendarRaw({
    required this.totalContributions,
    required this.weeks,
  });

  // region Json

  factory GithubContributionCalendarRaw.fromJson(Map<String, dynamic> json) {
    try {
      return _$GithubContributionCalendarRawFromJson(json);
    } catch (e) {
      print(json);
      print(e);
      rethrow;
    }
  }

  Map<String, dynamic> toJson() {
    return _$GithubContributionCalendarRawToJson(this);
  }

  // endregion

  @JsonKey(name: 'totalContributions')
  final int totalContributions;

  @JsonKey(name: 'weeks')
  final List<GithubContributionWeekRaw> weeks;

  @override
  List<Object?> get props {
    return <Object?>[
      totalContributions,
      weeks,
    ];
  }
}
