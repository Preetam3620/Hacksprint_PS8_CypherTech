class McqQuestion {
  String questionType;
  String questionText;
  String imageString;
  String optionA;
  String optionB;
  String optionC;
  String optionD;
  String answer;
  McqQuestion(
      {required this.questionType,
      required this.questionText,
      required this.imageString,
      required this.optionA,
      required this.optionB,
      required this.optionC,
      required this.optionD,
      required this.answer});
}

// 3MNI = 3 mcq no image
// 4MNI = 4 mcq no image
// 4MI = 4 mcq with image
List<McqQuestion> hindiTutNumber = [
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t1.png',
      optionA: 'एक',
      optionB: 'शून्य',
      optionC: 'दो',
      optionD: 'तीन',
      answer: 'शून्य'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t2.png',
      optionA: 'आठ',
      optionB: 'सात',
      optionC: 'एक',
      optionD: 'पांच',
      answer: 'एक'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t3.png',
      optionA: 'तीन',
      optionB: 'एक',
      optionC: 'छह',
      optionD: 'दो',
      answer: 'दो'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t4.png',
      optionA: 'एक',
      optionB: 'दो',
      optionC: 'तीन',
      optionD: 'पांच',
      answer: 'तीन'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t5.png',
      optionA: 'इकतालीस',
      optionB: 'चौदह',
      optionC: 'अस्सी-तीन',
      optionD: 'सत्रह',
      answer: 'चौदह'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t6.png',
      optionA: 'पांच',
      optionB: 'सैंतीस',
      optionC: 'पचपन ',
      optionD: 'पैंतालीस',
      answer: 'पैंतालीस'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t7.png',
      optionA: 'दो',
      optionB: 'पांच',
      optionC: 'नौ',
      optionD: 'सात',
      answer: 'नौ'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t8.png',
      optionA: 'पैंतालीस',
      optionB: 'चौरासी',
      optionC: 'उनहत्तर',
      optionD: 'अड़तालीस',
      answer: 'उनहत्तर'),
];

List<McqQuestion> hindiTutAnimals = [
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t1.png',
      optionA: 'एक',
      optionB: 'शून्य',
      optionC: 'दो',
      optionD: 'तीन',
      answer: 'शून्य'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t2.png',
      optionA: 'आठ',
      optionB: 'सात',
      optionC: 'एक',
      optionD: 'पांच',
      answer: 'एक'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t3.png',
      optionA: 'तीन',
      optionB: 'एक',
      optionC: 'छह',
      optionD: 'दो',
      answer: 'दो'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the number in the image correctly.',
      imageString: 'assets/beginnerImages/numbers/t4.png',
      optionA: 'एक',
      optionB: 'दो',
      optionC: 'तीन',
      optionD: 'पांच',
      answer: 'तीन'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t5.png',
      optionA: 'इकतालीस',
      optionB: 'चौदह',
      optionC: 'अस्सी-तीन',
      optionD: 'सत्रह',
      answer: 'चौदह'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t6.png',
      optionA: 'पांच',
      optionB: 'सैंतीस',
      optionC: 'पचपन ',
      optionD: 'पैंतालीस',
      answer: 'पैंतालीस'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t7.png',
      optionA: 'दो',
      optionB: 'पांच',
      optionC: 'नौ',
      optionD: 'सात',
      answer: 'नौ'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Identify the given number.',
      imageString: 'assets/beginnerImages/numbers/t8.png',
      optionA: 'पैंतालीस',
      optionB: 'चौरासी',
      optionC: 'उनहत्तर',
      optionD: 'अड़तालीस',
      answer: 'उनहत्तर'),
];
