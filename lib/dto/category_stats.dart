class CategoryStats {
  final bool isScore;
  final int bestScore;
  final int totalWrong;
  final int totalCorrect;
  final int totalSkipped;

  const CategoryStats({
    this.isScore = false,
    this.bestScore = 0,
    this.totalCorrect = 0,
    this.totalWrong = 0,
    this.totalSkipped = 0,
  });
}
