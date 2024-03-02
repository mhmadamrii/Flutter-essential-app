import 'models.dart';
import 'package:audio_service/audio_service.dart';

class Song {
  final String id;
  final Artist artist;
  final String title;
  final String imageUrl;
  final String? songPath;
  final String? songUrl;

  Song({
    this.id = '',
    required this.artist,
    required this.title,
    required this.imageUrl,
    this.songUrl,
    this.songPath,
  }) : assert(songUrl != null || songPath != null);

  // factory Song.fromMediaItem(MediaItem mediaItem) {
  //   String? songPath, songUrl;

  //   if ((mediaItem.extras!['url'] as String).startsWith('asset:///')) {
  //     songPath =
  //         mediaItem.extras!['url'].toString().replaceFirst('asset:///', '');
  //   } else {
  //     songUrl = mediaItem.extras!['url'];
  //   }

  //   return Song(
  //     id: mediaItem.id,
  //     artist: Artist(id: '1', name: 'mediaItem.artist'),
  //     title: mediaItem.title,
  //     imageUrl: mediaItem.artUri!.toString(),
  //     songPath: songPath,
  //     songUrl: songUrl,
  //   );
  // }

  // MediaItem toMediaItem() => MediaItem(
  //       id: id,
  //       artist: artist.id,
  //       title: title,
  //       artUri: Uri.parse(imageUrl),
  //       extras: <String, dynamic>{
  //         'url': songPath != null ? 'asset:///$songPath' : songUrl,
  //       },
  //     );

  static List<Song> songs = [
    Song(
      id: '1',
      artist: Artist(id: '1', name: 'Slowya Roll'),
      title: 'Crystal Bloom',
      songPath: 'assets/songs/crystal_bloom__slowya_roll.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1569521588854-9b461abc92ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ),
    Song(
      id: '2',
      artist: Artist(id: '2', name: 'Felix Johansson'),
      title: 'Exits',
      songPath: 'assets/songs/exits__felix_johansson.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1557672172-298e090bd0f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Song(
      id: '3',
      artist: Artist(id: '3', name: 'Aleph One'),
      title: 'Long Vacay',
      songPath: 'assets/songs/long_vacay__aleph_one.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1541661538396-53ba2d051eed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80',
    ),
    Song(
      id: '4',
      artist: Artist(id: '3', name: 'Aleph One'),
      title: 'Short Filbert',
      songPath: 'assets/songs/short_filbert__aleph_one.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1579818276653-bc3240840cf6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
    ),
    Song(
      id: '5',
      artist: Artist(id: '4', name: 'Zorro'),
      title: 'Marinate',
      songPath: 'assets/songs/marinate__zorro.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1598842377738-7aa01579d317?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
    ),
    Song(
      id: '6',
      artist: Artist(id: '5', name: 'Harvio'),
      title: 'Rojo Rojo',
      songPath: 'assets/songs/rojo_rojo__harvio.mp3',
      imageUrl:
          'https://images.unsplash.com/photo-1595878715977-2e8f8df18ea8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
    ),
  ];
}
