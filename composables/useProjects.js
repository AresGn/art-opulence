export const useProjects = () => {
  const { getAllCloudinaryProjects, getFeaturedCloudinaryProjects } = useCloudinaryProjects()

  const getAllProjects = async () => {
    try {
      // Charger les projets depuis Cloudinary
      const cloudinaryProjects = await getAllCloudinaryProjects()
      return cloudinaryProjects
    } catch (error) {
      console.error('Erreur lors du chargement des projets:', error)
      // Fallback vers des projets par défaut en cas d'erreur
      return []
    }
  }

  const getFeaturedProjects = async () => {
    try {
      const featuredProjects = await getFeaturedCloudinaryProjects()
      return featuredProjects
    } catch (error) {
      console.error('Erreur lors du chargement des projets mis en avant:', error)
      return []
    }
  }

  const getProjectById = async (id) => {
    try {
      const projects = await getAllProjects()
      return projects.find(project => project.id === id)
    } catch (error) {
      console.error('Erreur lors de la recherche du projet:', error)
      return null
    }
  }

  const getProjectsByCategory = async (category) => {
    try {
      const projects = await getAllProjects()
      return projects.filter(project => project.category === category)
    } catch (error) {
      console.error('Erreur lors du filtrage par catégorie:', error)
      return []
    }
  }

  return {
    getAllProjects,
    getFeaturedProjects,
    getProjectById,
    getProjectsByCategory
  }
}
