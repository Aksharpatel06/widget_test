class JsonModal {
  int? total, skip, limit;
  List<DetilsModal>? posts = [];

  JsonModal({this.total, this.skip, this.limit, this.posts});

  factory JsonModal.setData(Map<String, dynamic> json) {
    return JsonModal(
      total: json['total'],
      limit: json['limit'],
      skip: json['skip'],
      posts: (json['posts'] as List).map((e) => DetilsModal.setData(e)).toList(),
    );
  }
}

class DetilsModal {
  int? id, views, userId;
  String? title, body;
  List<String>? tags;
  ReactionsModal? reactionsModal;

  DetilsModal({
    this.id,
    this.views,
    this.userId,
    this.title,
    this.body,
    this.reactionsModal,
    this.tags,
  });

  factory DetilsModal.setData(Map<String, dynamic> json) {
    return DetilsModal(
      id: json['id'],
      views: json['views'],
      body: json['body'],
      title: json['title'],
      userId: json['userId'],
      reactionsModal: ReactionsModal.setData(json['reactions']),
      tags: List<String>.from(json['tags']),
    );
  }
}

class ReactionsModal {
  int? likes, dislikes;

  ReactionsModal({this.likes, this.dislikes});

  factory ReactionsModal.setData(Map<String, dynamic> data) {
    return ReactionsModal(
      likes: data['likes'],
      dislikes: data['dislikes'],
    );
  }
}
