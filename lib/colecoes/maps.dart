void main() {
  Map<String, int> scores = {"Paulo": 95};

  print(scores);

  print(scores["Paulo"]);

  scores["Maria"] = 92;

  print(scores);

  scores.remove("Paulo");

  print(scores);

  bool containsPaulo = scores.containsKey("Paulo");

  bool containsMaria = scores.containsKey("Maria");

  bool containsValueMaria = scores.containsValue(92);

  bool containsValuePaulo = scores.containsValue(95);

  print("Contains Key: $containsPaulo");

  print("Contains Key: $containsMaria");

  print("Contains Value: $containsValueMaria");

  print("Contains Value: $containsValuePaulo");

  const pessoa = [
    {null: "paulo"},
    {"nome": "paulo"},
    {"nome": "paulo"},
  ];
}
