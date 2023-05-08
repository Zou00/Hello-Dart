// 扩展类（继承） （https://dart.cn/samples#inheritance）

class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;
  Spacecraft(this.name, this.launchDate) {
    //Initialization code goes here.
  }

  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft:$name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('launched :$launchYear ($years years ago)');
    } else {
      print('Unlanunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);

  @override
  void describe() {
    super.describe();
    print('altitude is $altitude km');
  }
}

void main()
{
     var obt = Orbiter('天宫号', DateTime(2021, 4, 29), 389.2);
     obt.describe();
}
