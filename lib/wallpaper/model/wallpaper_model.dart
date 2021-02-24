class WallpaperModel {
  String _photographer;
  String _photographer_url;
  int _photographer_id;
  SrcModel _src;

  WallpaperModel(this._photographer, this._photographer_url,
      this._photographer_id, this._src);

  factory WallpaperModel.formMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        jsonData['photographer'],
        jsonData['photographer_url'],
        jsonData['photographer_id'],
        SrcModel.fromMap(jsonData['src']));
  }

  SrcModel get src => _src;

  int get photographer_id => _photographer_id;

  String get photographer_url => _photographer_url;

  String get photographer => _photographer;
}

class SrcModel {
  String _original;
  String _small;
  String _portrait;

  SrcModel(this._original, this._small, this._portrait);

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
        jsonData['original'], jsonData['small'], jsonData['portrait']);
  }

  String get portrait => _portrait;

  String get small => _small;

  String get original => _original;
}
