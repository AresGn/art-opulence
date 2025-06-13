<template>
  <div class="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow duration-300">
    <div class="relative group">
      <img 
        :src="project.images[0]" 
        :alt="project.title"
        class="w-full h-64 object-cover group-hover:scale-105 transition-transform duration-300"
      >
      <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-opacity duration-300 flex items-center justify-center">
        <NuxtLink 
          :to="`/projets/${project.id}`"
          class="bg-white text-gray-900 px-6 py-2 rounded-lg opacity-0 group-hover:opacity-100 transition-opacity duration-300 font-semibold"
        >
          Voir le projet
        </NuxtLink>
      </div>
    </div>
    <div class="p-6">
      <h3 class="text-xl font-semibold mb-2">{{ project.title }}</h3>
      <p class="text-gray-600 mb-3">{{ project.client }}</p>
      <div class="flex flex-wrap gap-2">
        <span 
          v-for="tool in project.tools" 
          :key="tool"
          class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"
        >
          {{ tool }}
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
</script>
