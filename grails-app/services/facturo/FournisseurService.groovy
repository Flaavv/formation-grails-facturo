package facturo

import grails.gorm.services.Service

@Service(Fournisseur)
interface FournisseurService {

    Fournisseur get(Serializable id)

    List<Fournisseur> list(Map args)

    Long count()
}
