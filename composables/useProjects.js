export const useProjects = () => {
  const projects = [
    {
      id: 'logo-restaurant-xyz',
      title: 'Logo Restaurant XYZ',
      category: 'logo',
      client: 'Restaurant XYZ',
      date: '2024-03',
      tools: ['Illustrator', 'Photoshop'],
      description: 'Création d\'une identité visuelle moderne et élégante pour un restaurant gastronomique. Le logo combine sophistication et accessibilité, reflétant l\'excellence culinaire tout en restant mémorable.',
      images: [
        'https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Logo+Principal',
        'https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Variations+Logo',
        'https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Applications'
      ],
      featured: true
    },
    {
      id: 'flyer-evenement-musical',
      title: 'Flyer Evenement Musical',
      category: 'flyer',
      client: 'Festival de Musique Electronique',
      date: '2024-02',
      tools: ['Photoshop', 'InDesign'],
      description: 'Design d\'un flyer vibrant et énergique pour un festival de musique électronique. Utilisation de couleurs néon et d\'effets visuels pour capturer l\'atmosphère électrisante de l\'événement.',
      images: [
        'https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Flyer+Recto',
        'https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Flyer+Verso',
        'https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Version+Web'
      ],
      featured: true
    },
    {
      id: 'video-promo-entreprise',
      title: 'Video Promo Entreprise',
      category: 'video',
      client: 'Tech Startup Innovation',
      date: '2024-01',
      tools: ['After Effects', 'Premiere Pro', 'Illustrator'],
      description: 'Montage vidéo promotionnel dynamique pour une startup technologique. Animation de logos, transitions fluides et storytelling visuel pour présenter les services de l\'entreprise.',
      images: [
        'https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Video+Thumbnail',
        'https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Storyboard',
        'https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Behind+Scenes'
      ],
      video: 'https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Video+Preview',
      featured: true
    },
    {
      id: 'affiche-cinema',
      title: 'Affiche Cinema Independant',
      category: 'affiche',
      client: 'Production Cinéma Indé',
      date: '2023-12',
      tools: ['Photoshop', 'Illustrator'],
      description: 'Création d\'une affiche de film dramatique avec une approche minimaliste mais impactante. Jeu sur les contrastes et la typographie pour créer une atmosphère mystérieuse.',
      images: [
        'https://via.placeholder.com/800x600/10B981/FFFFFF?text=Affiche+Finale',
        'https://via.placeholder.com/800x600/10B981/FFFFFF?text=Concepts+Initiaux',
        'https://via.placeholder.com/800x600/10B981/FFFFFF?text=Déclinaisons'
      ],
      featured: false
    },
    {
      id: 'banniere-web-ecommerce',
      title: 'Bannieres Web E-commerce',
      category: 'banniere',
      client: 'Boutique Mode Online',
      date: '2023-11',
      tools: ['Photoshop', 'After Effects'],
      description: 'Série de bannières web animées pour une boutique de mode en ligne. Design moderne et accrocheur avec animations subtiles pour améliorer l\'engagement utilisateur.',
      images: [
        'https://via.placeholder.com/800x600/F59E0B/FFFFFF?text=Banniere+Hero',
        'https://via.placeholder.com/800x600/F59E0B/FFFFFF?text=Banniere+Promo',
        'https://via.placeholder.com/800x600/F59E0B/FFFFFF?text=Banniere+Mobile'
      ],
      featured: false
    }
  ]

  const getAllProjects = () => {
    return projects
  }

  const getFeaturedProjects = () => {
    return projects.filter(project => project.featured)
  }

  const getProjectById = (id) => {
    return projects.find(project => project.id === id)
  }

  const getProjectsByCategory = (category) => {
    return projects.filter(project => project.category === category)
  }

  return {
    getAllProjects,
    getFeaturedProjects,
    getProjectById,
    getProjectsByCategory
  }
}
