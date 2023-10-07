class Post {
  final String iD;
  final String title;
  final List<String> tags;
  Map<String, Object>? results;

  Post({
    required this.iD,
    required this.title,
    required this.tags,
  });

  factory Post.fromJson(dynamic json) => Post(
        iD: json['_id'],
        title: json['title'],
        tags: List.from(json['tags']),
      );

  Map<String, dynamic> toJson() => {
        '_id': iD,
        'title': title,
        'tags': tags,
      };
}
