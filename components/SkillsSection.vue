<template>
  <section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4">
      <h2 class="text-3xl font-bold text-center mb-12">Competences</h2>
      <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-8">
        <div v-for="skill in skills" :key="skill.name" class="text-center">
          <div class="bg-white rounded-lg p-6 shadow-md hover:shadow-lg transition-shadow">
            <div class="text-4xl mb-3">{{ skill.icon }}</div>
            <h3 class="font-semibold text-gray-800">{{ skill.name }}</h3>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const skills = [
  { name: 'Photoshop', icon: '🎨' },
  { name: 'Illustrator', icon: '✏️' },
  { name: 'After Effects', icon: '🎬' },
  { name: 'Premiere Pro', icon: '🎞️' },
  { name: 'InDesign', icon: '📄' },
  { name: 'Figma', icon: '🎯' }
]
</script>
