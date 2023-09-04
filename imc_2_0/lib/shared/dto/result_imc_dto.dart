class ResultImcDto {
  final int age;
  final double weight;
  final double height;
  final bool? isSelectedMale;
  final bool? isSelectedFemale;

  ResultImcDto(
      {required this.age,
      required this.weight,
      required this.height,
      required this.isSelectedMale,
      required this.isSelectedFemale});
}
