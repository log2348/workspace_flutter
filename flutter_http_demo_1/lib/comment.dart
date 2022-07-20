class Comment {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Comment(this.postId, this.id, this.name, this.email, this.body);

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
        json['postId'], json['id'], json['name'], json['email'], json['body']);
  }
}
