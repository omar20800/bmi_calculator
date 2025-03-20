class Person {
  bool isMale;
  double height;
  int age;
  int weight;
  double bmi;
  String status;

  Person({
    this.isMale = true,
    this.height = 180,
    this.age = 25,
    this.weight = 60,
    this.bmi = 0,
    this.status = '',
  });

  static Person bmiGet(Person person) {
    person.bmi = person.weight / (person.height / 100 * person.height / 100);
    return person;
  }

  static Person bmiCheck(
    Person person,
  ) {
    if (person.bmi > 1) {
      if (person.bmi < 16) {
        person.status = "Severe Thinness";
      } else if (person.bmi >= 16 && person.bmi < 17) {
        person.status = "Moderate Thinness";
      } else if (person.bmi >= 17 && person.bmi < 18.5) {
        person.status = "Mild Thinness";
      } else if (person.bmi >= 18.5 && person.bmi < 25) {
        person.status = "Normal";
      } else if (person.bmi >= 25 && person.bmi < 30) {
        person.status = "Overweight";
      } else if (person.bmi >= 30 && person.bmi < 35) {
        person.status = "Obese Class 1";
      } else if (person.bmi >= 35 && person.bmi < 40) {
        person.status = "Obese Class 2";
      } else {
        person.status = "Obese Class 3";
      }
    } else {
      person.status = "Invalid BMI";
    }
    return person;
  }

  static String resultMessage(Person person) {
    String message;
    if (person.status == "Invalid BMI") {
      message = "Invalid BMI. Please check your input.";
    } else if (person.status == "Severe Thinness") {
      message = "You are severely underweight. You need to eat more.";
    } else if (person.status == "Moderate Thinness") {
      message = "You are moderately underweight. You need to eat more.";
    } else if (person.status == "Mild Thinness") {
      message = "You are mildly underweight. You need to eat more.";
    } else if (person.status == "Normal") {
      message = "You are healthy. Keep it up!";
    } else {
      message = "You are overweight. You need to exercise more.";
    }

    return message;
  }
}
