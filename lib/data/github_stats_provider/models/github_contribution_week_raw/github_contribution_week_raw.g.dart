// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_contribution_week_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubContributionWeekRaw _$GithubContributionWeekRawFromJson(
        Map<String, dynamic> json) =>
    GithubContributionWeekRaw(
      contributionDays: (json['contributionDays'] as List<dynamic>)
          .map((e) =>
              GithubContributionDayRaw.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GithubContributionWeekRawToJson(
        GithubContributionWeekRaw instance) =>
    <String, dynamic>{
      'contributionDays': instance.contributionDays,
    };
