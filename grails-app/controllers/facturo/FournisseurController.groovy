package facturo

class FournisseurController {
    FournisseurService fournisseurService

    static allowedMethods = [save: 'POST', update: 'PUT']

    def index() {
        [fournisseurs: Fournisseur.findAllByActif(true)]
    }

    def show(Long id) {
        Fournisseur fournisseur = fournisseurService.get(id)
        if (!fournisseur) {
            notFound()
            return
        }
        def nbreProduitEnRupture = Produit.countByFournisseurAndStock(fournisseur, 0)
        [fournisseur : fournisseur, nbreProduitEnRupture: nbreProduitEnRupture]
    }
}
