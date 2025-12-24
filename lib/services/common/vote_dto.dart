import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_dto.freezed.dart';
part 'vote_dto.g.dart';

@Freezed()
class VoteDTO with _$VoteDTO {
  const factory VoteDTO({
    required int availableBallots,
    required int issuedBallots,
    required int usedBallots,
    required String selectedCandidate,
    required int voteCount,
    required String userId,
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _VoteDTO;

  factory VoteDTO.fromJson(Map<String, dynamic> json) =>
      _$VoteDTOFromJson(json);
}
