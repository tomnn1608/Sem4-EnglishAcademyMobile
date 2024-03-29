class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick your lesson Pick your lesson\n               More than 35 times',
      image: "images/meo.jpg",
      title: "Select from Our"),
  UnboardingContent(
      description: 'You can pay cash\n         Card payment is available',
      image: "images/meo.jpg",
      title: "Select from Our"),
  UnboardingContent(
      description: 'You can pay cash\n         Card payment is available',
      image: "images/meo.jpg",
      title: "Select from Our"),
];
