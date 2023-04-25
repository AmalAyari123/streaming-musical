class Song {
  final String title;
  final String description;
  final String Url;

  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.Url,
    required this.coverUrl,
  });
  static List<Song> songs = [
    Song(
        title: 'Back To Black',
        description: 'Back To Black',
        Url: 'assets/music/backtoBlack.mp3',
        coverUrl: 'assets/images/song1.jpg'),
    Song(
        title: 'Summertime Sadness',
        description: 'Summertime Sadness',
        Url: 'assets/music/summertimesadness.mp3',
        coverUrl: 'assets/images/song2.jpg'),
    Song(
        title: 'Summertime Sadness',
        description: 'Summertime Sadness',
        Url: 'assets/music/backtoBlack.mp3',
        coverUrl: 'assets/images/song3.jpg'),
  ];
  static List<Song> songs2 = [
    Song(
        title: 'Back To Black',
        description: 'Back To Black',
        Url: 'assets/music/backtoBlack.mp3',
        coverUrl: 'assets/images/song1.jpg'),
    Song(
        title: 'Summertime Sadness',
        description: 'Summertime Sadness',
        Url: 'assets/music/summertimesadness.mp3',
        coverUrl: 'assets/images/song2.jpg')
  ];
}
