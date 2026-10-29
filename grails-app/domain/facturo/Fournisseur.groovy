package facturo

class Fournisseur {
    String code
    String raisonSociale
    String siret
    String email
    Integer delaiLivraisonJours
    boolean actif
    String motifDesactivation
    Date dateCreated

    static hasMany = [produits: Produit]


}
