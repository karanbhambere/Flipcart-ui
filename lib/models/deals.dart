class deals {
  final String _imageUrl;
  final String _name;
  final String _discount;

  deals(this._imageUrl, this._name, this._discount);

  String get discount => _discount;

  String get name => _name;

  String get imageUrl => _imageUrl;
}
