import 'song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;

  final String image;

  Playlist({
    required this.title,
    required this.songs,
    required this.image,
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'Hip-hop R&B Mix',
      songs: Song.songs,
      image: 'assets/images/hip hop.jpg',
    ),
    Playlist(
        title: 'Techno', songs: Song.songs2, image: 'assets/images/techno.jpg'),
    Playlist(
        title: 'Pop Music', songs: Song.songs, image: 'assets/images/pop.jpg')
  ];
}
