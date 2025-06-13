<template>
  <div v-if="project" class="container mx-auto px-4 py-16">
    <div class="max-w-4xl mx-auto">
      <div class="mb-8">
        <NuxtLink to="/projets" class="text-blue-600 hover:text-blue-800 mb-4 inline-block">
          ← Retour aux projets
        </NuxtLink>
        <h1 class="text-4xl font-bold mb-4">{{ project.title }}</h1>
        <div class="flex flex-wrap gap-4 text-gray-600 mb-6">
          <span>Client: {{ project.client }}</span>
          <span>Date: {{ project.date }}</span>
        </div>
      </div>

      <div class="mb-12">
        <ProjectSlider :images="project.images" :alt="project.title" />
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <div class="lg:col-span-2">
          <h2 class="text-2xl font-semibold mb-4">Description</h2>
          <p class="text-gray-600 leading-relaxed">{{ project.description }}</p>
        </div>
        <div>
          <h3 class="text-xl font-semibold mb-4">Outils utilises</h3>
          <div class="flex flex-wrap gap-2">
            <span 
              v-for="tool in project.tools" 
              :key="tool"
              class="bg-blue-100 text-blue-800 px-3 py-1 rounded-full text-sm"
            >
              {{ tool }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div v-else class="container mx-auto px-4 py-16 text-center">
    <h1 class="text-2xl font-bold text-gray-600">Projet non trouve</h1>
    <NuxtLink to="/projets" class="text-blue-600 hover:text-blue-800 mt-4 inline-block">
      ← Retour aux projets
    </NuxtLink>
  </div>
</template>

<script setup>
const route = useRoute()
const { getProjectById } = useProjects()

const project = getProjectById(route.params.slug)

if (project) {
  useSeoMeta({
    title: `${project.title} - Portfolio Designer Graphique`,
    description: project.description
  })
}
</script>
