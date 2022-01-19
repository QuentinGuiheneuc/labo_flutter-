class Login {
  final String nom;
  final String prenom;
  final String avatar;

  Login(this.nom, this.prenom,this.avatar);

    Login.fromJson(
    Map<String, dynamic> json,
  )   : nom = json['nom'],
        prenom = json['prenom'],
        avatar = json['avatar'];

  Map<String, dynamic> toJson() => {
        "nom": nom,
        "prenom": prenom,
        "avatar": avatar,
      };
}
