<template>
  <section class="bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900 text-white py-20 min-h-screen flex items-center">
    <div class="container mx-auto px-4 text-center">
      <div class="max-w-4xl mx-auto">
        <div class="fade-in">
          <p class="text-lg md:text-xl text-purple-200 mb-4 font-medium">
            Bonjour, je suis
          </p>
          <h1 class="text-5xl md:text-7xl font-bold mb-6 bg-gradient-to-r from-purple-400 to-pink-400 bg-clip-text text-transparent">
            Ramel Granes<br>
            <span class="text-4xl md:text-6xl">Boulamidas</span>
          </h1>
          <div class="text-2xl md:text-3xl font-light mb-8 text-white">
            <span class="block mb-2">Designer Graphique</span>
            <span class="text-lg md:text-xl text-purple-200">
              Créations visuelles impactantes • Montage vidéo professionnel
            </span>
          </div>
        </div>

        <div class="flex flex-col sm:flex-row gap-6 justify-center mt-12 slide-up">
          <NuxtLink
            to="/projets"
            class="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white px-10 py-4 rounded-full font-semibold text-lg transition-all duration-300 hover:scale-105 hover:shadow-xl"
          >
            Découvrir mes projets
          </NuxtLink>

          <NuxtLink
            to="/contact"
            class="border-2 border-white/30 bg-white/10 hover:bg-white hover:text-slate-900 text-white px-10 py-4 rounded-full font-semibold text-lg transition-all duration-300 hover:scale-105"
          >
            Collaborons ensemble
          </NuxtLink>
        </div>
      </div>
    </div>
  </section>
</template>
