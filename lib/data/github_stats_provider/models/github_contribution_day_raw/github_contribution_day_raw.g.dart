// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_contribution_day_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubContributionDayRaw _$GithubContributionDayRawFromJson(
        Map<String, dynamic> json) =>
    GithubContributionDayRaw(
      contributionCount: json['contributionCount'] as int,
      weekday: json['weekday'] as int,
      date: json['date'] as String,
    );

Map<String, dynamic> _$GithubContributionDayRawToJson(
        GithubContributionDayRaw instance) =>
    <String, dynamic>{
      'contributionCount': instance.contributionCount,
      'weekday': instance.weekday,
      'date': instance.date,
    };
