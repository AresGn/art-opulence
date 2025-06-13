<template>
  <div class="container mx-auto px-4 py-16">
    <div class="max-w-4xl mx-auto">
      <h1 class="text-4xl font-bold mb-8">A Propos</h1>
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
        <div>
          <h2 class="text-2xl font-semibold mb-4">Presentation</h2>
          <p class="text-gray-600 mb-6">
            Designer graphique passionne avec une expertise en creation visuelle
            et montage video. Je transforme vos idees en creations impactantes.
          </p>
          <p class="text-gray-600 mb-6">
            Avec plusieurs annees d'experience dans le domaine du design,
            je maitrise les outils Adobe Creative Suite et je reste constamment
            a l'affut des dernieres tendances visuelles.
          </p>
        </div>
        <div>
          <h2 class="text-2xl font-semibold mb-4">Processus de Travail</h2>
          <div class="space-y-4">
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">1</div>
              <div>
                <h3 class="font-semibold">Analyse du besoin</h3>
                <p class="text-gray-600">Comprehension de vos objectifs et contraintes</p>
              </div>
            </div>
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">2</div>
              <div>
                <h3 class="font-semibold">Conception creative</h3>
                <p class="text-gray-600">Developpement de concepts visuels innovants</p>
              </div>
            </div>
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">3</div>
              <div>
                <h3 class="font-semibold">Realisation</h3>
                <p class="text-gray-600">Production des creations finales optimisees</p>
              </div>
            </div>
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold">4</div>
              <div>
                <h3 class="font-semibold">Livraison</h3>
                <p class="text-gray-600">Remise des fichiers dans tous les formats necessaires</p>
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
  title: 'A Propos - Portfolio Designer Graphique',
  description: 'Decouvrez mon parcours et mon approche du design graphique et du montage video.'
})
</script>
