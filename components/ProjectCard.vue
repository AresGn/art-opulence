<template>
  <div class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
    <!-- Image section - plus grande et plus proéminente -->
    <div class="relative group overflow-hidden h-80">
      <img
        :src="project.images[0]"
        :alt="project.title"
        class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110"
        @error="handleImageError"
        @load="handleImageLoad"
        loading="lazy"
      >
      <!-- Overlay avec effet gradient subtil -->
      <div class="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300">
        <div class="absolute bottom-4 left-4 right-4 flex justify-between items-end">
          <div class="text-white">
            <p class="text-sm font-medium opacity-90">{{ project.client }}</p>
            <p class="text-xs opacity-75">{{ project.date }}</p>
          </div>
          <NuxtLink
            :to="`/projets/${project.id}`"
            class="bg-white text-gray-900 px-4 py-2 rounded-lg font-semibold text-sm hover:bg-gray-100 transition-colors shadow-lg"
          >
            Voir le projet
          </NuxtLink>
        </div>
      </div>
      <!-- Badge de catégorie -->
      <div class="absolute top-4 left-4">
        <span class="bg-white/90 backdrop-blur-sm text-gray-800 px-3 py-1 rounded-full text-xs font-semibold">
          {{ getCategoryDisplayName(project.category) }}
        </span>
      </div>
    </div>

    <!-- Contenu réduit pour mettre l'accent sur l'image -->
    <div class="p-4">
      <h3 class="text-lg font-bold mb-2 text-gray-900 line-clamp-2">{{ project.title }}</h3>
      <p class="text-gray-600 text-sm mb-3 line-clamp-2">{{ project.description }}</p>
      <div class="flex flex-wrap gap-1">
        <span
          v-for="tool in project.tools.slice(0, 3)"
          :key="tool"
          class="bg-blue-50 text-blue-700 px-2 py-1 rounded-md text-xs font-medium"
        >
          {{ tool }}
        </span>
        <span v-if="project.tools.length > 3" class="text-gray-400 text-xs px-2 py-1">
          +{{ project.tools.length - 3 }}
        </span>
      </div>
    </div>
  </div>
</template>

<script setup>
defineProps({
  project: {
    type: Object,
    required: true
  }
})

const handleImageError = (event) => {
  // En cas d'erreur de chargement, afficher une image placeholder avec un design cohérent
  event.target.src = 'https://via.placeholder.com/800x600/F3F4F6/9CA3AF?text=Image+Non+Disponible'
  event.target.classList.add('opacity-75')
  console.warn('Erreur de chargement d\'image:', event.target.src)
}

const handleImageLoad = (event) => {
  // Ajouter une classe pour indiquer que l'image est chargée
  event.target.classList.add('loaded')
  console.log('Image chargée avec succès:', event.target.src)
}

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
</script>

<style scoped>
.line-clamp-2 {
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
}

.loaded {
  animation: fadeIn 0.3s ease-in-out;
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}
</style>
