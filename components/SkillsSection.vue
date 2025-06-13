<template>
  <section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4">
      <h2 class="text-3xl font-bold text-center mb-12">Compétences</h2>
      <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-8">
        <div v-for="skill in skills" :key="skill.name" class="text-center">
          <div class="bg-white rounded-lg p-6 shadow-md hover:shadow-lg transition-shadow flex flex-col items-center">
            <div class="mb-3">
              <img v-if="skill.iconImg" :src="skill.iconImg" :alt="skill.name + ' icon'" class="h-10 w-10 mx-auto" />
              <span v-else class="text-4xl">{{ skill.icon }}</span>
            </div>
            <h3 class="font-semibold text-gray-800">{{ skill.name }}</h3>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const skills = [
  { name: 'Blender', iconImg: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/blender/blender-original.svg' },
  { name: 'GIMP', iconImg: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/gimp/gimp-original.svg' },
  { name: 'Premiere Pro', iconImg: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/premierepro/premierepro-original.svg' },
  { name: 'AVS Studio', icon: '🎥' },
  { name: 'Photoshop', iconImg: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/photoshop/photoshop-plain.svg' },
  { name: 'Illustrator', iconImg: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/illustrator/illustrator-plain.svg' }
]
</script>
