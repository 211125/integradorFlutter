import '../../domain/entities/post.dart';

class PostModel extends Post {
  PostModel({
    required int id,
    required String userId,
    required String description,
    required String multimedia,
    required String userProfile
  }) : super(id: id, userId: userId,description:description,multimedia:multimedia,userProfile:userProfile);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      userId: json['userId'],
      description: json['description'],
      multimedia: json['multimedia'],
      userProfile: json['userProfile']
    );
  }

  factory PostModel.fromEntity(Post post) {
    return PostModel(
      id: post.id,
      userId: post.userId,
      description: post.description,
      multimedia: post.multimedia,
      userProfile: post.userProfile
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'description': description,
      'multimedia': multimedia,
      'userProfile':userProfile
    };
  }
}