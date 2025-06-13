<template>
  <div v-if="project" class="min-h-screen bg-gray-50">
    <!-- Hero Section avec image HD -->
    <div class="relative h-96 md:h-[500px] overflow-hidden">
      <img
        :src="project.images[0]"
        :alt="project.title"
        class="w-full h-full object-cover"
        @error="handleImageError"
      >
      <div class="absolute inset-0 bg-gradient-to-t from-black/60 via-black/20 to-transparent">
        <div class="absolute bottom-8 left-8 right-8 text-white">
          <div class="max-w-4xl mx-auto">
            <NuxtLink to="/projets" class="text-white/80 hover:text-white mb-4 inline-flex items-center text-sm">
              <svg class="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path>
              </svg>
              Retour aux projets
            </NuxtLink>
            <h1 class="text-4xl md:text-5xl font-bold mb-4">{{ project.title }}</h1>
            <div class="flex flex-wrap gap-6 text-white/90">
              <span class="flex items-center">
                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"></path>
                </svg>
                {{ project.client }}
              </span>
              <span class="flex items-center">
                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                </svg>
                {{ project.date }}
              </span>
              <span class="flex items-center">
                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
                {{ projectDetails.duration }} jours
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Contenu principal -->
    <div class="container mx-auto px-4 py-16">
      <div class="max-w-6xl mx-auto">
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-12">
          <!-- Colonne principale -->
          <div class="lg:col-span-2 space-y-8">
            <!-- Description du projet -->
            <section class="bg-white rounded-xl p-8 shadow-lg">
              <h2 class="text-3xl font-bold mb-6 text-gray-900">À propos du projet</h2>
              <p class="text-gray-700 leading-relaxed text-lg mb-6">{{ project.description }}</p>

              <!-- Description détaillée -->
              <div class="prose prose-lg max-w-none">
                <p class="text-gray-600 leading-relaxed">{{ projectDetails.detailedDescription }}</p>
              </div>
            </section>

            <!-- Stratégie et approche -->
            <section class="bg-white rounded-xl p-8 shadow-lg">
              <h2 class="text-3xl font-bold mb-6 text-gray-900">Stratégie & Approche</h2>
              <div class="space-y-4">
                <div v-for="(step, index) in projectDetails.strategy" :key="index" class="flex items-start">
                  <div class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center text-sm font-bold mr-4 mt-1">
                    {{ index + 1 }}
                  </div>
                  <div>
                    <h3 class="font-semibold text-gray-900 mb-2">{{ step.title }}</h3>
                    <p class="text-gray-600">{{ step.description }}</p>
                  </div>
                </div>
              </div>
            </section>

            <!-- Image HD -->
            <section class="bg-white rounded-xl p-8 shadow-lg">
              <h2 class="text-3xl font-bold mb-6 text-gray-900">Résultat final</h2>
              <div class="relative rounded-lg overflow-hidden">
                <img
                  :src="project.images[0]"
                  :alt="project.title"
                  class="w-full h-auto max-h-96 object-contain bg-gray-100"
                  @error="handleImageError"
                >
              </div>
            </section>
          </div>

          <!-- Sidebar -->
          <div class="space-y-6">
            <!-- Informations du projet -->
            <div class="bg-white rounded-xl p-6 shadow-lg">
              <h3 class="text-xl font-bold mb-4 text-gray-900">Détails du projet</h3>
              <div class="space-y-4">
                <div>
                  <label class="text-sm font-medium text-gray-500 uppercase tracking-wide">Client</label>
                  <p class="text-gray-900 font-semibold">{{ project.client }}</p>
                </div>
                <div>
                  <label class="text-sm font-medium text-gray-500 uppercase tracking-wide">Catégorie</label>
                  <p class="text-gray-900 font-semibold">{{ getCategoryDisplayName(project.category) }}</p>
                </div>
                <div>
                  <label class="text-sm font-medium text-gray-500 uppercase tracking-wide">Date de réalisation</label>
                  <p class="text-gray-900 font-semibold">{{ project.date }}</p>
                </div>
                <div>
                  <label class="text-sm font-medium text-gray-500 uppercase tracking-wide">Durée du projet</label>
                  <p class="text-gray-900 font-semibold">{{ projectDetails.duration }} jours</p>
                </div>
              </div>
            </div>

            <!-- Outils utilisés -->
            <div class="bg-white rounded-xl p-6 shadow-lg">
              <h3 class="text-xl font-bold mb-4 text-gray-900">Outils utilisés</h3>
              <div class="flex flex-wrap gap-2">
                <span
                  v-for="tool in project.tools"
                  :key="tool"
                  class="bg-blue-100 text-blue-800 px-3 py-2 rounded-lg text-sm font-medium"
                >
                  {{ tool }}
                </span>
              </div>
            </div>

            <!-- Call to action -->
            <div class="bg-gradient-to-r from-blue-600 to-purple-600 rounded-xl p-6 text-white">
              <h3 class="text-xl font-bold mb-2">Projet similaire ?</h3>
              <p class="text-blue-100 mb-4">Contactez-moi pour discuter de votre projet</p>
              <NuxtLink to="/contact" class="bg-white text-blue-600 px-4 py-2 rounded-lg font-semibold hover:bg-blue-50 transition-colors inline-block">
                Me contacter
              </NuxtLink>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Page d'erreur -->
  <div v-else class="min-h-screen bg-gray-50 flex items-center justify-center">
    <div class="text-center">
      <h1 class="text-4xl font-bold text-gray-900 mb-4">Projet non trouvé</h1>
      <p class="text-gray-600 mb-8">Le projet que vous recherchez n'existe pas ou a été supprimé.</p>
      <NuxtLink to="/projets" class="bg-blue-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-blue-700 transition-colors">
        Retour aux projets
      </NuxtLink>
    </div>
  </div>
</template>

<script setup>
const route = useRoute()
const { getProjectById } = useProjects()

// Charger le projet de manière asynchrone
const project = await getProjectById(route.params.slug)

// Fonction pour gérer les erreurs d'image
const handleImageError = (event) => {
  event.target.src = 'https://via.placeholder.com/800x600/F3F4F6/9CA3AF?text=Image+Non+Disponible'
}

// Fonction pour obtenir le nom d'affichage de la catégorie
const getCategoryDisplayName = (category) => {
  const categoryNames = {
    'logo': 'Logo',
    'affiche': 'Affiche',
    'banniere': 'Bannière',
    'carte-visite': 'Carte de visite',
    'packaging': 'Packaging'
  }
  return categoryNames[category] || category
}

// Générer des détails de projet basés sur la catégorie et le contenu
const generateProjectDetails = (project) => {
  if (!project) return null

  const categoryStrategies = {
    'logo': [
      { title: 'Recherche et analyse', description: 'Étude approfondie de la marque, de ses valeurs et de son positionnement sur le marché.' },
      { title: 'Conceptualisation', description: 'Création de plusieurs concepts créatifs reflétant l\'identité de la marque.' },
      { title: 'Développement', description: 'Affinement du concept choisi et déclinaison en différentes versions.' },
      { title: 'Finalisation', description: 'Optimisation finale et préparation des fichiers pour tous les supports.' }
    ],
    'affiche': [
      { title: 'Brief créatif', description: 'Analyse des objectifs de communication et du public cible.' },
      { title: 'Conception visuelle', description: 'Création d\'un design impactant alliant esthétique et efficacité.' },
      { title: 'Hiérarchisation', description: 'Organisation des informations pour une lecture optimale.' },
      { title: 'Production', description: 'Préparation des fichiers pour l\'impression ou la diffusion digitale.' }
    ],
    'banniere': [
      { title: 'Analyse du support', description: 'Étude des contraintes techniques et du contexte d\'affichage.' },
      { title: 'Design adaptatif', description: 'Création d\'un design optimisé pour le format bannière.' },
      { title: 'Optimisation', description: 'Ajustement pour une visibilité maximale et un impact fort.' },
      { title: 'Déclinaisons', description: 'Adaptation pour différents formats et supports si nécessaire.' }
    ],
    'carte-visite': [
      { title: 'Identité visuelle', description: 'Intégration harmonieuse de l\'identité de marque existante.' },
      { title: 'Hiérarchie info', description: 'Organisation claire et lisible des informations de contact.' },
      { title: 'Design compact', description: 'Optimisation de l\'espace pour un maximum d\'impact.' },
      { title: 'Finitions', description: 'Choix des matériaux et finitions pour un rendu professionnel.' }
    ],
    'packaging': [
      { title: 'Étude produit', description: 'Analyse du produit et de ses contraintes de conditionnement.' },
      { title: 'Design fonctionnel', description: 'Création d\'un design alliant esthétique et praticité.' },
      { title: 'Communication', description: 'Intégration des éléments de communication et de branding.' },
      { title: 'Production', description: 'Préparation technique pour la fabrication industrielle.' }
    ]
  }

  const categoryDurations = {
    'logo': Math.floor(Math.random() * 3) + 3, // 3-5 jours
    'affiche': Math.floor(Math.random() * 2) + 2, // 2-3 jours
    'banniere': Math.floor(Math.random() * 2) + 1, // 1-2 jours
    'carte-visite': Math.floor(Math.random() * 2) + 1, // 1-2 jours
    'packaging': Math.floor(Math.random() * 4) + 4 // 4-7 jours
  }

  const categoryDescriptions = {
    'logo': `Ce projet de création de logo a nécessité une approche méthodique pour capturer l'essence de la marque ${project.client}. L'objectif était de créer une identité visuelle forte, mémorable et intemporelle qui reflète parfaitement les valeurs et la personnalité de l'entreprise.`,
    'affiche': `Cette affiche a été conçue pour ${project.client} avec pour objectif de créer un impact visuel fort et de transmettre efficacement le message. Le design combine créativité et fonctionnalité pour attirer l'attention et susciter l'engagement du public cible.`,
    'banniere': `Cette bannière pour ${project.client} a été développée pour maximiser la visibilité et l'impact dans son environnement d'affichage. Le design prend en compte les contraintes du format tout en conservant une forte identité visuelle.`,
    'carte-visite': `Cette carte de visite pour ${project.client} représente un condensé d'élégance et de professionnalisme. Chaque élément a été soigneusement pensé pour créer une première impression mémorable et refléter l'image de marque.`,
    'packaging': `Ce packaging pour ${project.client} allie design attractif et fonctionnalité. L'objectif était de créer un emballage qui se démarque en rayon tout en protégeant efficacement le produit et en communiquant les valeurs de la marque.`
  }

  return {
    duration: categoryDurations[project.category] || 2,
    strategy: categoryStrategies[project.category] || categoryStrategies['affiche'],
    detailedDescription: categoryDescriptions[project.category] || `Ce projet pour ${project.client} a été réalisé avec soin pour répondre aux besoins spécifiques du client tout en créant un design impactant et professionnel.`
  }
}

const projectDetails = computed(() => generateProjectDetails(project))

// SEO Meta
if (project) {
  useSeoMeta({
    title: `${project.title} - Portfolio Designer Graphique`,
    description: project.description,
    ogTitle: `${project.title} - Art Opulence`,
    ogDescription: project.description,
    ogImage: project.images[0],
    twitterCard: 'summary_large_image'
  })
}
</script>
