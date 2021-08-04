class PhotosModel {
  int albumId;
  int id;
  String thumbnailUrl;
  String title;
  String url;

  PhotosModel.fromJSON(Map<String, dynamic> parsedJson) {
    this.albumId = parsedJson['albumId'];
    this.id = parsedJson['id'];
    this.thumbnailUrl = parsedJson['thumbnailUrl'];
    this.title = parsedJson['title'];
    this.url = parsedJson['url'];
  }
}