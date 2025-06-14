<template>
  <div>
    <Hero />
    <section class="py-20 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16 fade-in">
          <h2 class="text-4xl md:text-5xl font-bold mb-4 bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">
            Projets Récents
          </h2>
          <p class="text-xl text-gray-600 max-w-2xl mx-auto">
            Découvrez une sélection de mes créations les plus récentes,
            alliant créativité et expertise technique.
          </p>
        </div>
        <div class="flex flex-wrap justify-center gap-4 mb-12">
          <button 
            v-for="category in categories" 
            :key="category"
            @click="selectedCategory = category"
            :class="[
              'px-6 py-2 rounded-full transition-colors',
              selectedCategory === category 
                ? 'bg-blue-600 text-white' 
                : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
            ]"
          >
            {{ category }}
          </button>
        </div>
        <div class="projects-grid">
          <ProjectCard v-for="project in filteredProjects.slice(0, 6)" :key="project.id" :project="project" />
        </div>
        <div v-if="filteredProjects.length === 0" class="text-center py-12">
          <p class="text-gray-600 text-lg">Aucun projet trouve pour cette categorie.</p>
        </div>
        <div class="text-center mt-16">
          <NuxtLink
            to="/projets"
            class="inline-flex items-center bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white px-10 py-4 rounded-full font-semibold text-lg transition-all duration-300"
          >
            Voir tous les projets
            <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
            </svg>
          </NuxtLink>
        </div>
      </div>
    </section>
    <TestimonialsSection />
    <SkillsSection />
  </div>
</template>

<script setup>
const { getAllProjects } = useProjects()
const projects = await getAllProjects()

const selectedCategory = ref('Tous')
const categories = ['Tous', 'Logo', 'Affiche', 'Banniere', 'Carte de visite', 'Packaging']

const filteredProjects = computed(() => {
  if (selectedCategory.value === 'Tous') return projects

  // Mapper les noms d'affichage vers les catégories internes
  const categoryMap = {
    'Logo': 'logo',
    'Affiche': 'affiche',
    'Banniere': 'banniere',
    'Carte de visite': 'carte-visite',
    'Packaging': 'packaging'
  }

  const internalCategory = categoryMap[selectedCategory.value]
  return projects.filter(p => p.category === internalCategory)
})

useSeoMeta({
  title: 'Art Opulence - Designer Graphique & Montage Vidéo',
  description: 'Portfolio de Art Opulence, designer graphique spécialisé en création d\'identités visuelles et montage vidéo professionnel. Découvrez mes créations : logos, flyers, affiches, bannières et vidéos.'
})
</script>
