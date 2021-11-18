class LoveLiveAPI {
  Idols? idols;
  Support? support;

  LoveLiveAPI({this.idols, this.support});

  LoveLiveAPI.fromJson(Map<String, dynamic> json) {
    idols = json['idols'] != null ? Idols.fromJson(json['idols']) : null;
    support =
        json['support'] != null ? Support.fromJson(json['support']) : null;
  }
}

class Idols {
  List<Muses?>? muses;
  List<Aqours?>? aqours;
  List<Nijigasaki?>? nijigasaki;
  List<Liella?>? liella;

  Idols({this.muses, this.aqours, this.nijigasaki, this.liella});

  Idols.fromJson(Map<String, dynamic> json) {
    if (json['muses'] != null) {
      muses = <Muses>[];
      json['muses'].forEach((v) {
        muses!.add(Muses.fromJson(v));
      });
    }
    if (json['aqours'] != null) {
      aqours = <Aqours>[];
      json['aqours'].forEach((v) {
        aqours!.add(Aqours.fromJson(v));
      });
    }
    if (json['nijigasaki'] != null) {
      nijigasaki = <Nijigasaki>[];
      json['nijigasaki'].forEach((v) {
        nijigasaki!.add(Nijigasaki.fromJson(v));
      });
    }
    if (json['liella'] != null) {
      liella = <Liella>[];
      json['liella'].forEach((v) {
        liella!.add(Liella.fromJson(v));
      });
    }
  }
}

class Muses {
  String? name;
  String? description;
  String? picture;
  String? year;
  String? birthday;
  String? gender;
  String? bloodtype;
  String? height;
  String? favoritefood;
  String? dislikedfood;
  String? charmpoint;

  Muses(
      {this.name,
      this.description,
      this.picture,
      this.year,
      this.birthday,
      this.gender,
      this.bloodtype,
      this.height,
      this.favoritefood,
      this.dislikedfood,
      this.charmpoint});

  Muses.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    year = json['year'];
    birthday = json['birthday'];
    gender = json['gender'];
    bloodtype = json['bloodtype'];
    height = json['height'];
    favoritefood = json['favoritefood'];
    dislikedfood = json['dislikedfood'];
    charmpoint = json['charmpoint'];
  }
}

class Aqours {
  String? name;
  String? description;
  String? picture;
  String? year;
  String? birthday;
  String? gender;
  String? bloodtype;
  String? height;
  String? favoritefood;
  String? dislikedfood;
  String? charmpoint;

  Aqours(
      {this.name,
      this.description,
      this.picture,
      this.year,
      this.birthday,
      this.gender,
      this.bloodtype,
      this.height,
      this.favoritefood,
      this.dislikedfood,
      this.charmpoint});

  Aqours.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    year = json['year'];
    birthday = json['birthday'];
    gender = json['gender'];
    bloodtype = json['bloodtype'];
    height = json['height'];
    favoritefood = json['favoritefood'];
    dislikedfood = json['dislikedfood'];
    charmpoint = json['charmpoint'];
  }
}

class Nijigasaki {
  String? name;
  String? description;
  String? picture;
  String? year;
  String? birthday;
  String? gender;
  String? bloodtype;
  String? height;

  Nijigasaki(
      {this.name,
      this.description,
      this.picture,
      this.year,
      this.birthday,
      this.gender,
      this.bloodtype,
      this.height});

  Nijigasaki.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    year = json['year'];
    birthday = json['birthday'];
    gender = json['gender'];
    bloodtype = json['bloodtype'];
    height = json['height'];
  }
}

class Liella {
  String? name;
  String? description;
  String? picture;
  String? year;
  String? birthday;
  String? gender;
  String? bloodtype;
  String? height;
  String? favoritefood;
  String? dislikedfood;

  Liella(
      {this.name,
      this.description,
      this.picture,
      this.year,
      this.birthday,
      this.gender,
      this.bloodtype,
      this.height,
      this.favoritefood,
      this.dislikedfood});

  Liella.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    year = json['year'];
    birthday = json['birthday'];
    gender = json['gender'];
    bloodtype = json['bloodtype'];
    height = json['height'];
    favoritefood = json['favoritefood'];
    dislikedfood = json['dislikedfood'];
  }
}

class Support {
  List<NijigasakiSupport?>? nijigasakiSupport;

  Support({this.nijigasakiSupport});

  Support.fromJson(Map<String, dynamic> json) {
    if (json['nijigasaki-support'] != null) {
      nijigasakiSupport = <NijigasakiSupport>[];
      json['nijigasaki-support'].forEach((v) {
        nijigasakiSupport!.add(NijigasakiSupport.fromJson(v));
      });
    }
  }
}

class NijigasakiSupport {
  String? name;
  String? description;
  String? picture;
  String? year;
  String? gender;
  String? height;

  NijigasakiSupport(
      {this.name,
      this.description,
      this.picture,
      this.year,
      this.gender,
      this.height});

  NijigasakiSupport.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    year = json['year'];
    gender = json['gender'];
    height = json['height'];
  }
}
