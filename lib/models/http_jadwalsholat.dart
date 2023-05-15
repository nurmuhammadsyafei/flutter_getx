import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpJadwalSholat {
  String id, name, job, createdAt;

  HttpJadwalSholat(
      {this.createdAt = "", this.job = "", this.name = "", this.id = ""});

  static Future<HttpJadwalSholat> connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");
    var hasilResponse = await http.post(url, body: {"name": name, "job": job});
    var data = json.decode(hasilResponse.body);
    return HttpJadwalSholat(
      id: data["id"],
      name: data["name"],
      job: data["job"],
      createdAt: data["createdAt"],
    );
  }
}
