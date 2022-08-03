void inc(int x) {
  x++;
}

String getName(List<String> name) {
  String Name = "";
  for (int i = 0; i < name.length; i++) {
    Name += name[i];
  }
  return Name;
}

List<int> reverseList(List<int> arr) {
  List<int> newArr = [];

  for (int i = arr.length - 1; i >= 0; i--) {
    newArr.add(arr[i]);
  }
  return newArr;
}

int listSum(List arr) {
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum = (sum + arr[i]) as int;
  }
  return sum;
}

void main() {
  /*
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
  int x = 5;
  inc(x);
  print(x);
  */
  List<int> arr = [1, 2, 3, 4, 5];

  List<String> name = ['K', 'I', 'R', 'O'];
  List<Map> users = [
    {
      "Name": "Kirollos Baghdad",
      "Age": 20,
      "College": "Cairo Uni Faculty of Engineering"
    },
    {"Name": "Youssef Said", "Age": 21, "College": "AST"}
  ];

  print(getName(name));
  print(reverseList(arr));

  print(listSum(arr));

  users[0].forEach((key, value) {
    print("${key} : ${value}");
  });

  users.forEach(
    (user) => {
      user.forEach((key, value) {
        print("${key} : ${value}");
      })
    },
  );

  print(users[1]['Name']);
}
