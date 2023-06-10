import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_contribution_day_raw.g.dart';

@JsonSerializable()
class GithubContributionDayRaw with EquatableMixin {
  const GithubContributionDayRaw({
    required this.contributionCount,
    required this.weekday,
    required this.date,
  });

  // region Json

  factory GithubContributionDayRaw.fromJson(Map<String, dynamic> json) {
    try {
      return _$GithubContributionDayRawFromJson(json);
    } catch (e) {
      print(json);
      print(e);
      rethrow;
    }
  }

  Map<String, dynamic> toJson() {
    return _$GithubContributionDayRawToJson(this);
  }

  // endregion

  @JsonKey(name: 'contributionCount')
  final int contributionCount;

  @JsonKey(name: 'weekday')
  final int weekday;

  @JsonKey(name: 'date')
  final String date;

  @override
  List<Object?> get props {
    return <Object?>[
      contributionCount,
      weekday,
      date,
    ];
  }
}
