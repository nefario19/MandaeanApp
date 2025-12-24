// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoteModelImpl _$$VoteModelImplFromJson(Map<String, dynamic> json) =>
    _$VoteModelImpl(
      availableBallots: (json['availableBallots'] as num).toInt(),
      issuedBallots: (json['issuedBallots'] as num).toInt(),
      usedBallots: (json['usedBallots'] as num).toInt(),
      selectedCandidate: json['selectedCandidate'] as String,
      voteCount: (json['voteCount'] as num).toInt(),
      userId: json['userId'] as String,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$VoteModelImplToJson(_$VoteModelImpl instance) =>
    <String, dynamic>{
      'availableBallots': instance.availableBallots,
      'issuedBallots': instance.issuedBallots,
      'usedBallots': instance.usedBallots,
      'selectedCandidate': instance.selectedCandidate,
      'voteCount': instance.voteCount,
      'userId': instance.userId,
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
