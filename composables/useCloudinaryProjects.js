// Importer directement les données JSON
import cloudinaryData from '~/public/cloudinary_links.json'

export const useCloudinaryProjects = () => {
  const loadCloudinaryData = async () => {
    try {
      // Retourner les données importées directement
      return cloudinaryData
    } catch (error) {
      console.error('Erreur lors du chargement des données Cloudinary:', error)
      return {}
    }
  }

  const transformToProjects = (cloudinaryData) => {
    const projects = []
    let projectId = 1

    // Mapper les catégories Cloudinary vers les catégories du portfolio
    const categoryMapping = {
      'Affiche': 'affiche',
      'Afiche_Cusine': 'affiche',
      'banniere': 'banniere',
      'Carte_Visite': 'carte-visite',
      'Logo': 'logo',
      'packaging': 'packaging'
    }

    // Transformer chaque catégorie en projets
    Object.entries(cloudinaryData).forEach(([category, items]) => {
      const mappedCategory = categoryMapping[category] || 'autre'
      
      items.forEach((item, index) => {
        // Créer un titre basé sur le nom du fichier
        const title = item.file
          .replace(/\.(jpg|jpeg|png|JPG|JPEG|PNG)$/i, '')
          .replace(/[_-]/g, ' ')
          .replace(/\b\w/g, l => l.toUpperCase())

        // Déterminer le client basé sur la catégorie et le nom
        let client = 'Client Confidentiel'
        if (category === 'Affiche' || category === 'Afiche_Cusine') {
          if (item.file.includes('CIDEV')) client = 'CIDEV ONG'
          else if (item.file.includes('COTEF')) client = 'COTEF SARL'
          else if (item.file.includes('EYA') || item.file.includes('TELIBOR')) client = 'Eya Télibor'
          else if (item.file.includes('LYNE')) client = 'Lyne Institut'
        } else if (category === 'Logo') {
          if (item.file.includes('AFANE')) client = 'AFANE'
          else if (item.file.includes('BNDO')) client = 'BNDO'
          else if (item.file.includes('FABLITECH')) client = 'Fablitech'
          else if (item.file.includes('ROMANNEL')) client = 'Romannel'
        }

        // Déterminer les outils utilisés basés sur la catégorie
        let tools = ['GIMP']
        if (mappedCategory === 'video') {
          tools = ['AVS Video Editor', 'GIMP']
        } else if (mappedCategory === 'banniere') {
          tools = ['GIMP', 'Design Web']
        }

        // Créer une description personnalisée selon la catégorie
        let description = ''
        switch(mappedCategory) {
          case 'logo':
            description = `Création d'un logo professionnel pour ${client}. Design d'identité visuelle moderne et mémorable.`
            break
          case 'affiche':
            description = `Conception d'une affiche créative pour ${client}. Design graphique impactant et communication visuelle efficace.`
            break
          case 'banniere':
            description = `Création d'une bannière web pour ${client}. Design moderne optimisé pour l'engagement digital.`
            break
          case 'carte-visite':
            description = `Design de carte de visite professionnelle pour ${client}. Identité visuelle élégante et mémorable.`
            break
          case 'packaging':
            description = `Conception de packaging créatif pour ${client}. Design produit attractif et fonctionnel.`
            break
          default:
            description = `Création graphique professionnelle pour ${client}. Design créatif alliant esthétique et efficacité.`
        }

        const project = {
          id: `cloudinary-project-${projectId}`,
          title: title,
          category: mappedCategory,
          client: client,
          date: '2024',
          tools: tools,
          description: description,
          images: [item.url],
          featured: index < 3, // Les 3 premiers de chaque catégorie sont mis en avant
          cloudinaryCategory: category,
          originalFile: item.file
        }

        projects.push(project)
        projectId++
      })
    })

    return projects
  }

  const getAllCloudinaryProjects = async () => {
    const cloudinaryData = await loadCloudinaryData()
    const projects = transformToProjects(cloudinaryData)
    return projects
  }

  const getFeaturedCloudinaryProjects = async () => {
    const projects = await getAllCloudinaryProjects()
    return projects.filter(project => project.featured)
  }

  const getCloudinaryProjectsByCategory = async (category) => {
    const projects = await getAllCloudinaryProjects()
    return projects.filter(project => project.category === category)
  }

  return {
    loadCloudinaryData,
    transformToProjects,
    getAllCloudinaryProjects,
    getFeaturedCloudinaryProjects,
    getCloudinaryProjectsByCategory
  }
}
