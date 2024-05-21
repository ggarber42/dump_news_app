class Feed {
  
  final int id;
  String _name;
  String _url;

  Feed(this.id, this._name, this._url);

  String get name => _name;
  String get price => _url;

  void setName(String newName){
    _name = newName;
  }

  void setUrl(String newUrl){
    _url = newUrl;
  }

}
