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
List<McqQuestion> englishTutNumber = [
  McqQuestion(
      questionType: '4MI',
      questionText: 'छवि में संख्या को सही ढंग से पहचानें। ',
      imageString: 'assets/beginnerImages/numbers/t1.png',
      optionA: 'one',
      optionB: 'zero',
      optionC: 'two',
      optionD: 'three',
      answer: 'zero'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'छवि में संख्या को सही ढंग से पहचानें। ',
      imageString: 'assets/beginnerImages/numbers/t2.png',
      optionA: 'eight',
      optionB: 'seven',
      optionC: 'one',
      optionD: 'पांच',
      answer: 'one'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'छवि में संख्या को सही ढंग से पहचानें। ',
      imageString: 'assets/beginnerImages/numbers/t3.png',
      optionA: 'three',
      optionB: 'one',
      optionC: 'छह',
      optionD: 'two',
      answer: 'two'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'दी गई संख्या की सही पहचान करें।',
      imageString: 'assets/beginnerImages/numbers/t4.png',
      optionA: 'one',
      optionB: 'two',
      optionC: 'three',
      optionD: 'five',
      answer: 'three'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'दी गई संख्या की सही पहचान करें।',
      imageString: 'assets/beginnerImages/numbers/t5.png',
      optionA: 'forty-one',
      optionB: 'fourteen',
      optionC: 'eighty-three',
      optionD: 'Seventeen',
      answer: 'fourteen'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'दी गई संख्या की सही पहचान करें।',
      imageString: 'assets/beginnerImages/numbers/t6.png',
      optionA: 'five',
      optionB: 'thirty seven',
      optionC: 'fifty-five ',
      optionD: 'forty-five',
      answer: 'fifty-five'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'दी गई संख्या की सही पहचान करें।',
      imageString: 'assets/beginnerImages/numbers/t7.png',
      optionA: 'two',
      optionB: 'five',
      optionC: 'nine',
      optionD: 'seven',
      answer: 'nine'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'दी गई संख्या की सही पहचान करें।',
      imageString: 'assets/beginnerImages/numbers/t8.png',
      optionA: 'forty-five',
      optionB: 'eighty-four',
      optionC: 'sixty-nine',
      optionD: 'forty-eight',
      answer: 'sixty-nine'),
];

List<McqQuestion> hindiTutAnimals = [
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which animal is this?',
      imageString: 'assets/beginnerImages/animals/t1.png',
      optionA: 'कुत्ता',
      optionB: 'बिल्ली',
      optionC: 'तेंदुआ',
      optionD: 'बाघ',
      answer: 'कुत्ता'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which animal is this?',
      imageString: 'assets/beginnerImages/animals/t2.png',
      optionA: 'कुत्ता',
      optionB: 'बिल्ली',
      optionC: 'तेंदुआ',
      optionD: 'सिंह',
      answer: 'बिल्ली'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which animal is this?',
      imageString: 'assets/beginnerImages/animals/t3.png',
      optionA: 'तेंदुआ',
      optionB: 'सिंह',
      optionC: 'बाघ',
      optionD: 'व्हेल',
      answer: ' तेंदुआ'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which animal is this?',
      imageString: 'assets/beginnerImages/animals/t4.png',
      optionA: 'तेंदुआ',
      optionB: 'व्हेल',
      optionC: 'बाघ',
      optionD: 'तोता',
      answer: 'तोता'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which animal is this?',
      imageString: 'assets/beginnerImages/animals/t5.png',
      optionA: 'सिंह',
      optionB: 'तेंदुआ',
      optionC: 'हाथी',
      optionD: 'कुत्ता',
      answer: 'हाथी'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which animal is this?',
      imageString: 'assets/beginnerImages/animals/t6.png',
      optionA: 'मगरमच्छ',
      optionB: 'तेंदुआ',
      optionC: 'बाघ',
      optionD: 'बिल्ली',
      answer: 'बिल्ली'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which animal is this?',
      imageString: 'assets/beginnerImages/animals/t7.png',
      optionA: 'कुत्ता',
      optionB: 'बाघ',
      optionC: 'सिंह',
      optionD: 'व्हेल',
      answer: 'व्हेल'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which bird is this?',
      imageString: 'assets/beginnerImages/animals/t8.png',
      optionA: 'तेंदुआ',
      optionB: 'तोता',
      optionC: 'बिल्ली',
      optionD: 'कुत्ता',
      answer: 'तोता'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'Which bird is this?',
      imageString: 'assets/beginnerImages/animals/t9.png',
      optionA: 'तोता',
      optionB: 'तेंदुआ',
      optionC: 'पेंगुइन',
      optionD: 'कुत्ता',
      answer: 'पेंगुइन'),
];
List<McqQuestion> englishTutAnimals = [
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा जानवर है?',
      imageString: 'assets/beginnerImages/animals/t1.png',
      optionA: 'Dog',
      optionB: 'Cat',
      optionC: 'Leopard',
      optionD: 'Tiger',
      answer: 'Dog'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा जानवर है?',
      imageString: 'assets/beginnerImages/animals/t2.png',
      optionA: 'Dog',
      optionB: 'Cat',
      optionC: 'Leopard',
      optionD: 'Lion',
      answer: 'Cat'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा जानवर है?',
      imageString: 'assets/beginnerImages/animals/t3.png',
      optionA: 'Leopard',
      optionB: 'Lion',
      optionC: 'Tiger',
      optionD: 'Whale',
      answer: ' Leopard'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा जानवर है?',
      imageString: 'assets/beginnerImages/animals/t4.png',
      optionA: 'Leopard',
      optionB: 'Whale',
      optionC: 'Tiger',
      optionD: 'Parrot',
      answer: 'Parrot'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा जानवर है?',
      imageString: 'assets/beginnerImages/animals/t5.png',
      optionA: 'Lion',
      optionB: 'Leopard',
      optionC: 'Elephant',
      optionD: 'Dog',
      answer: 'Elephant'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा जानवर है?',
      imageString: 'assets/beginnerImages/animals/t6.png',
      optionA: 'Crocodile',
      optionB: 'Leopard',
      optionC: 'Tiger',
      optionD: 'Cat',
      answer: 'Cat'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा जानवर है?',
      imageString: 'assets/beginnerImages/animals/t7.png',
      optionA: 'Dog',
      optionB: 'Tiger',
      optionC: 'Lion',
      optionD: 'Whale',
      answer: 'Whale'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा पक्षी है?',
      imageString: 'assets/beginnerImages/animals/t8.png',
      optionA: 'Leopard',
      optionB: 'Parrot',
      optionC: 'Cat',
      optionD: 'Dog',
      answer: 'Parrot'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'यह कौन सा पक्षी है?',
      imageString: 'assets/beginnerImages/animals/t9.png',
      optionA: 'Parrot',
      optionB: 'Leopard',
      optionC: 'Penguin',
      optionD: 'Dog',
      answer: 'Penguin'),
];

List<McqQuestion> hindiTutGreetings = [
  McqQuestion(
      questionType: '3MNI',
      questionText: 'Which greeting is best for a formal business meeting?',
      imageString: '',
      optionA: 'नमस्ते',
      optionB: 'अरे',
      optionC: 'आप से मिलकर अच्छा लगा',
      optionD: '',
      answer: 'आप से मिलकर अच्छा लगा'),
  McqQuestion(
      questionType: '3MNI',
      questionText:
          'If you leaving someone at night, you can greet them by saying',
      imageString: '',
      optionA: 'शुभ रात्रि',
      optionB: 'शुभ प्रभात',
      optionC: 'सुसंध्या',
      optionD: '',
      answer: 'शुभ रात्रि'),
  McqQuestion(
      questionType: '3MNI',
      questionText: 'Synonymous of goodbye',
      imageString: '',
      optionA: 'See you later',
      optionB: 'Goodbye',
      optionC: 'Nice to meet you',
      optionD: '',
      answer: 'See you later'),
  McqQuestion(
      questionType: '3MI',
      questionText: 'Which one is greeting?',
      imageString: 'assets/beginnerImages/greetings/t4.png',
      optionA: 'नमस्ते',
      optionB: 'अलविदा',
      optionC: 'आप से कल मिलता हूं',
      optionD: '',
      answer: 'नमस्ते'),
  McqQuestion(
      questionType: '3MI',
      questionText: 'Match the correct greetings with the time',
      imageString: 'assets/beginnerImages/greetings/t5.png',
      optionA: 'शुभ रात्रि',
      optionB: 'सुसंध्या',
      optionC: 'शुभ प्रभात',
      optionD: '',
      answer: 'शुभ प्रभात'),
];
List<McqQuestion> englishTutGreetings = [
  McqQuestion(
      questionType: '3MNI',
      questionText:
          'औपचारिक व्यावसायिक बैठक के लिए कौन सा अभिवादन सर्वोत्तम है?',
      imageString: '',
      optionA: 'Hi',
      optionB: 'Hey',
      optionC: 'Nice to meet you',
      optionD: '',
      answer: 'Nice to meet you'),
  McqQuestion(
      questionType: '3MNI',
      questionText:
          'अगर आप किसी को रात में छोड़कर जा रहे हैं, तो आप यह कहकर उनका अभिवादन कर सकते हैं',
      imageString: '',
      optionA: 'Good night',
      optionB: 'Good morning',
      optionC: 'Good evening',
      optionD: '',
      answer: 'Good night'),
  McqQuestion(
      questionType: '3MNI',
      questionText: 'अलविदा का समानार्थी',
      imageString: '',
      optionA: 'See you later',
      optionB: 'Goodbye',
      optionC: 'Nice to meet you',
      optionD: '',
      answer: 'See you later'),
  McqQuestion(
      questionType: '4MI',
      questionText: 'कौन सा अभिवादन कर रहा है?',
      imageString: 'assets/beginnerImages/greetings/t4.png',
      optionA: 'Hi',
      optionB: 'Bye',
      optionC: 'See you tommorow',
      optionD: 'So long',
      answer: 'Hi'),
  McqQuestion(
      questionType: '3MI',
      questionText: 'समय के साथ सही अभिवादन का मिलान करें',
      imageString: 'assets/beginnerImages/greetings/t5.png',
      optionA: 'Good night',
      optionB: 'Good afternoon',
      optionC: 'Good morning',
      optionD: '',
      answer: 'Good night'),
];
