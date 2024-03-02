class Artist {
  String id;
  final String name;

  Artist({this.id = '', required this.name});

  static List<Artist> artists = [
    Artist(id: '1', name: 'Slowya Roll'),
    Artist(id: '2', name: 'Felix Johansson'),
    Artist(id: '3', name: 'Aleph One'),
    Artist(id: '4', name: 'Zorro'),
    Artist(id: '5', name: 'Harvio'),
  ];
}
