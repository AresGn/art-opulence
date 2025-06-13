<template>
  <section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4">
      <h2 class="text-3xl font-bold text-center mb-12">Compétences</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
        <div v-for="skill in skills" :key="skill.name" class="text-center">
          <div class="bg-white rounded-lg p-6 shadow-md hover:shadow-lg transition-shadow flex flex-col items-center h-full">
            <div class="mb-4">
              <img v-if="skill.iconImg" :src="skill.iconImg" :alt="skill.name + ' icon'" class="h-12 w-12 mx-auto" />
              <span v-else class="text-5xl">{{ skill.icon }}</span>
            </div>
            <h3 class="font-semibold text-gray-800 mb-2">{{ skill.name }}</h3>
            <p class="text-sm text-gray-600 text-center">{{ skill.description }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const skills = [
  {
    name: 'GIMP',
    iconImg: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/gimp/gimp-original.svg',
    description: 'Retouche photo et création graphique'
  },
  {
    name: 'AVS Video Editor',
    icon: '🎥',
    description: 'Montage et édition vidéo professionnel'
  },
  {
    name: 'Design Graphique',
    icon: '🎨',
    description: 'Création d\'identités visuelles'
  },
  {
    name: 'Montage Vidéo',
    icon: '📹',
    description: 'Post-production et effets visuels'
  }
]
</script>
