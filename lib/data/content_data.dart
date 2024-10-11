class SuperheroData {
  String imageUrl = '';
  String name = '';
  String detail = '';
  num popularity = 0;
  String type = '';
  String strength = '';
  List<HeroEnemy>? heroEnemy;

  SuperheroData(
    this.imageUrl,
    this.name,
    this.detail,
    this.popularity,
    this.type,
    this.strength, {
    String? heroKey,
  }) : heroEnemy = heroKey != null ? heroEnemies[heroKey] : [];
}

class HeroEnemy {
  String? imageUrl;
  String? name;

  HeroEnemy(this.name, this.imageUrl);
}

List<SuperheroData> superHeroList = [
  SuperheroData(
      'assets/images/captain_america.jpeg',
      'Captain America',
      'Seorang prajurit yang diberikan serum Super-Soldier, memberinya kekuatan, ketahanan, dan ketangkasan luar biasa. Ia memimpin Avengers dengan moralitas kuat, menggunakan perisai vibranium sebagai senjata utama. Steve adalah simbol keberanian dan keadilan.',
      5000000,
      'Physical',
      '92/100',
  heroKey: 'Captain America'),
  SuperheroData(
      'assets/images/captain_marvel.jpeg',
      'Captain Marvel',
      'Seorang mantan pilot Angkatan Udara yang mendapatkan kekuatan super setelah berinteraksi dengan teknologi Kree. Captain Marvel memiliki kekuatan luar biasa, bisa terbang, dan memanipulasi energi kosmik. Ia adalah salah satu pahlawan paling kuat di Marvel Cinematic Universe.',
      3000000,
      'Physical/Energy',
      '98/100',
  heroKey: 'Captain Marvel'),
  SuperheroData(
      'assets/images/hawkeye.jpeg',
      'Hawkeye',
      'Seorang pemanah ulung dan anggota kunci Avengers, Hawkeye adalah mantan agen S.H.I.E.L.D. yang memiliki keterampilan luar biasa dalam memanah dan pertarungan jarak dekat. Meski tidak memiliki kekuatan super, ketepatan dan kecepatan refleksnya menjadikannya aset penting dalam pertempuran. Dengan kepribadian tangguh namun penuh humor, ia sering menjadi penyeimbang emosi dalam tim.',
      7000000,
      'Physical/Shooter',
      '88/100',
  heroKey: 'Hawkeye'),
  SuperheroData(
      'assets/images/hulk.jpeg',
      'Hulk',
      'Seorang ilmuwan yang berubah menjadi raksasa hijau berkat radiasi gamma. Saat marah, ia berubah menjadi Hulk, memiliki kekuatan fisik luar biasa dan daya tahan yang hampir tak tertandingi. Meskipun sering dianggap tak terkendali, Hulk adalah sekutu penting bagi Avengers.',
      4000000,
      'Physical/Super Power',
      '95/100',
  heroKey: 'Hulk'),
  SuperheroData(
      'assets/images/iron_man.jpg',
      'Iron Man',
      'Iron Man, alias Tony Stark, adalah seorang jenius miliarder yang menciptakan baju besi canggih untuk menyelamatkan hidupnya dan melawan kejahatan. Dengan teknologi canggih dan kecerdasan buatan di dalam kostumnya, Iron Man memiliki kekuatan super, kemampuan terbang, dan senjata hebat. Ia juga salah satu pendiri Avengers.',
      1000000,
      'Physical/IQ',
      '100/100',
  heroKey: 'Iron Man'),
];

Map<String, List<HeroEnemy>> heroEnemies = {
  'Captain Marvel': [
    HeroEnemy('Yon Rogg', 'assets/images/yon_rog.jpeg'),
    HeroEnemy('Ronan the Accuser', 'assets/images/ronan.jpeg'),
    HeroEnemy('Skrulls', 'assets/images/skrulls.jpg'),
  ],
  'Captain America': [
    HeroEnemy('Red Skull', 'assets/images/red_skull.jpeg'),
    HeroEnemy('Winter Soldier', 'assets/images/winter_soldier.jpg'),
    HeroEnemy('Crossbones', 'assets/images/cross_bones.jpeg'),
    HeroEnemy('Baron Zemo', 'assets/images/baron_zemo.jpeg'),
  ],
  'Hulk': [
    HeroEnemy('Abomination', 'assets/images/abomination.jpeg'),
    HeroEnemy('The Leader', 'assets/images/the_leader.jpeg'),
  ],
  'Hawkeye': [
    HeroEnemy('Baron Zemo', 'assets/images/baron_zemo.jpeg'),
    HeroEnemy('Taskmaster', 'assets/images/taskmaster.jpeg'),
    HeroEnemy('The Hood', 'assets/images/the_hood.jpeg'),
  ],
  'Iron Man': [
    HeroEnemy('Mandarin', 'assets/images/mandarin.jpeg'),
    HeroEnemy('Whiplash', 'assets/images/whiplash.jpeg'),
    HeroEnemy('Ultron', 'assets/images/ultron.jpeg'),
  ],
};
