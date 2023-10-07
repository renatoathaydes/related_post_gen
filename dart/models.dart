class Post {
  final String iD;
  final String title;
  final List<String> tags;

  Post({
    required this.iD,
    required this.title,
    required this.tags,
  });

  factory Post.fromJson(Object? object) {
    return switch (object) {
      Map<String, Object?> json => Post(
          iD: json['_id'] as String,
          title: json['title'] as String,
          tags: (json['tags'] as List<dynamic>)
              .map((e) => e.toString())
              .toList(growable: false),
        ),
      _ => throw Exception('Invalid post: $object'),
    };
  }

  Map<String, Object> toJson() => {
        '_id': iD,
        'title': title,
        'tags': tags,
      };
}
