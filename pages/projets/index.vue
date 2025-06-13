<template>
  <div class="container mx-auto px-4 py-16">
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
    <h1 class="text-4xl font-bold mb-8 text-center">Mes Projets</h1>
    <div class="grid grid-cols-2 md:grid-cols-3 gap-8">
      <ProjectCard v-for="project in filteredProjects.slice(0, 15)" :key="project.id" :project="project" cardClass="aspect-square" />
    </div>
    <div v-if="filteredProjects.length === 0" class="text-center py-12">
      <p class="text-gray-600 text-lg">Aucun projet trouve pour cette categorie.</p>
    </div>
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
  title: 'Projets - Portfolio Designer Graphique',
  description: 'Decouvrez tous mes projets de design graphique : logos, flyers, affiches, bannieres et videos.'
})
</script>
