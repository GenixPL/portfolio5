// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_contribution_calendar_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubContributionCalendarRaw _$GithubContributionCalendarRawFromJson(
        Map<String, dynamic> json) =>
    GithubContributionCalendarRaw(
      totalContributions: json['totalContributions'] as int,
      weeks: (json['weeks'] as List<dynamic>)
          .map((e) =>
              GithubContributionWeekRaw.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GithubContributionCalendarRawToJson(
        GithubContributionCalendarRaw instance) =>
    <String, dynamic>{
      'totalContributions': instance.totalContributions,
      'weeks': instance.weeks,
    };
