void main() {
  Student Doe = Student("john Doe", "214631");

  Doe.studentGrades(90);
  Doe.studentConduct("Exellent student");
  Doe.printEvenNo(10);
}

abstract class SubjectMaths {
  void studentGrades(int marks) {}
  void studentConduct(String message) {}
  void printEvenNo(int num) {}
}

class Student extends SubjectMaths {
  Student(String? name, String? studentNo);

  @override
  void studentGrades(int marks) {
    if (marks < 50) {
      print("Fail");
    } else {
      print("Pass");
    }
  }

  @override
  void studentConduct(String message) {
    print(message);
  }

  @override
  void printEvenNo(int num) {
    for (int i = 0; i < num; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }
}
