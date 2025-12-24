import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_model.freezed.dart';
part 'vote_model.g.dart';

@freezed
class VoteModel with _$VoteModel {
  const VoteModel._();
  const factory VoteModel({
    required int availableBallots,
    required int issuedBallots,
    required int usedBallots,
    required String selectedCandidate,
    required int voteCount,
    required String userId,
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _VoteModel;

  bool get allowedToVote => availableBallots > 0;

  bool get voted => usedBallots > 0;

  factory VoteModel.fromJson(Map<String, dynamic> json) =>
      _$VoteModelFromJson(json);
}
