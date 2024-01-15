class Produit {
  String nom;
  int _quantite;

  Produit(this.nom, this._quantite);

  int get quantite => _quantite;

  set quantite(int a){
    if(a >= 0){

    }
  }
}
