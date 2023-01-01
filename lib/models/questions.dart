class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "How many Bits makes one Byte?",
    "options": ['10 Bits', '8 Bits', '12 Bits', '4 Bits'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Who was the programmer of Ms-Dos operating system?	",
    "options": [
      'Charles Babbage',
      'Albert Einstein',
      'Bill Gates',
      'Elon Musk'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "The first program that run on a computer when computer boots up is?",
    "options": ['BIOS', 'Boot System', 'Operating System', 'Software'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
        "What is the address given to a computer connected to a network called?	",
    "options": ['MAC', 'GPS', 'Track ID', 'IP Address'],
    "answer_index": 3,
  },
];
