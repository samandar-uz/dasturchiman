class Question {
  final int id;
  final String questionText;
  final int categoryId;
  final int seconds;
  final List<Answer> answers;

  Question({
    required this.id,
    required this.questionText,
    required this.categoryId,
    required this.seconds,
    required this.answers,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'] as int,
      questionText: json['question_text'] as String,
      categoryId: json['categoryId'] as int,
      seconds: json['time_limit_seconds'] as int,
      answers: (json['answers'] as List)
          .map((answer) => Answer.fromJson(answer))
          .toList(),
    );
  }
}

class Answer {
  final int id;
  final String text;
  final bool correct;

  Answer({required this.id, required this.text, required this.correct});

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      id: json['id'] as int,
      text: json['answer_text'] as String,
      correct: json['correct'] as bool,
    );
  }
}
