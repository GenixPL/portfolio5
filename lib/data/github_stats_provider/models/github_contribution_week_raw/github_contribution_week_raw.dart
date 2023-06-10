import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio5/data/_data.dart';

part 'github_contribution_week_raw.g.dart';

@JsonSerializable()
class GithubContributionWeekRaw with EquatableMixin {
  const GithubContributionWeekRaw({
    required this.contributionDays,
  });

  // region Json

  factory GithubContributionWeekRaw.fromJson(Map<String, dynamic> json) {
    try {
      return _$GithubContributionWeekRawFromJson(json);
    } catch (e) {
      print(json);
      print(e);
      rethrow;
    }
  }

  Map<String, dynamic> toJson() {
    return _$GithubContributionWeekRawToJson(this);
  }

  // endregion

  @JsonKey(name: 'contributionDays')
  final List<GithubContributionDayRaw> contributionDays;

  @override
  List<Object?> get props {
    return <Object?>[
      contributionDays,
    ];
  }
}
