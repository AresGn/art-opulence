<template>
  <div class="container mx-auto px-4 py-16">
    <div class="max-w-4xl mx-auto">
      <h1 class="text-4xl font-bold mb-8">À Propos</h1>
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
        <div>
          <h2 class="text-2xl font-semibold mb-4">Présentation</h2>
          <p class="text-gray-600 mb-6">
            Designer graphique passionné avec une expertise en création visuelle et montage vidéo. Je maîtrise Blender, AVS Studio, Premiere Pro et GIMP pour donner vie à vos idées.
          </p>
          <p class="text-gray-600 mb-6">
            Avec plusieurs années d'expérience dans le domaine du design, je reste constamment à l'affût des dernières tendances visuelles et technologiques.
          </p>
        </div>
        <div>
          <h2 class="text-2xl font-semibold mb-4">Processus de Travail</h2>
          <div class="space-y-4">
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">1</div>
              <div>
                <h3 class="font-semibold">Analyse du besoin</h3>
                <p class="text-gray-600">Compréhension de vos objectifs et contraintes</p>
              </div>
            </div>
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">2</div>
              <div>
                <h3 class="font-semibold">Conception créative</h3>
                <p class="text-gray-600">Développement de concepts visuels innovants</p>
              </div>
            </div>
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">3</div>
              <div>
                <h3 class="font-semibold">Réalisation</h3>
                <p class="text-gray-600">Production des créations finales optimisées</p>
              </div>
            </div>
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">4</div>
              <div>
                <h3 class="font-semibold">Livraison</h3>
                <p class="text-gray-600">Remise des fichiers dans tous les formats nécessaires</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mt-12">
        <SkillsSection />
      </div>
    </div>
  </div>
</template>

<script setup>
useSeoMeta({
  title: 'À Propos - Portfolio Designer Graphique',
  description: 'Découvrez mon parcours et mon approche du design graphique et du montage vidéo.'
})
</script>
