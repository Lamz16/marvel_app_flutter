class SuperheroData {
  String imageUrl = '';
  String name = '';

  SuperheroData(this.imageUrl, this.name);
}

List<SuperheroData> superHeroList = [
  SuperheroData(
      'assets/images/captain_marvel.jpeg',
      'Captain Marvel'),
  SuperheroData(
      'assets/images/hawkeye.jpeg',
      'Hawkeye'),
  SuperheroData(
      'assets/images/hulk.jpeg',
      'Hulk')
];
