import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;

class HttpStateful {
  String id, name, job, createdAt,fullname, email, avatar,aidi,id_karyawan,nama,telp,alamat,branch,spv;
  // var id_karyawan,spv; 

  HttpStateful(
      {this.createdAt = "", this.job = "", this.name = "", this.id = "",
      this.avatar="", this.email="", this.fullname="",this.aidi=""
      ,this.id_karyawan="",this.telp="",this.alamat="",this.branch="",this.spv="",this.nama = ""
      });

  static Future<HttpStateful> connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");
    var hasilResponse = await http.post(url, body: {"name": name, "job": job});
    var data = json.decode(hasilResponse.body);
    return HttpStateful(
      id: data["id"],
      name: data["name"],
      job: data["job"],
      createdAt: data["createdAt"],
    );
  }


  static Future<HttpStateful> oracleAPI()async {
    // Uri url = Uri.parse("http://192.168.1.12:3003/example/db");
    Uri url = Uri.parse("http://10.146.49.160:3003/example/db");
    var hasilResponse = await http.get(url);
    var data = (json.decode(hasilResponse.body))["data"];
    print(data);

    return HttpStateful(
        id_karyawan:data[0]["ID_KARYAWAN"],
        nama: data[0]["NAMA"],
        spv: data[0]["SPV"],
        alamat:data[0]["ALAMAT"],
        branch:data[0]["BRANCH"],
        telp:data[0]["TELP"],
        );
  } 
  
  static Future<HttpStateful> konekAPI(String id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/" + id);

    var hasilResponse = await http.get(url);

    var data = (json.decode(hasilResponse.body))["data"];

    // print(data);

    return HttpStateful(
      id: data["id"].toString(),
      fullname: data["first_name"] + " " + data["last_name"],
      avatar: data["avatar"],
      email: data["email"],
    );
  }
}
