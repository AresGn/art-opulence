<template>
  <section class="hero-section bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900 text-white py-20 min-h-screen flex items-center">
    <div class="container mx-auto px-4 text-center">
      <div class="max-w-4xl mx-auto">
        <div class="fade-in">
          <p class="text-lg md:text-xl text-purple-200 mb-4 font-medium">
            Bonjour, je suis
          </p>
          <h1 class="text-5xl md:text-7xl font-bold mb-6 bg-gradient-to-r from-purple-400 to-pink-400 bg-clip-text text-transparent">
            Art Opulence
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

<script setup>
import { onMounted, nextTick } from 'vue'

onMounted(() => {
  // S'assurer qu'aucun élément Swiper n'apparaît dans la section Hero
  nextTick(() => {
    const heroSection = document.querySelector('.hero-section')
    if (heroSection) {
      // Supprimer tous les éléments Swiper qui pourraient apparaître dans le Hero
      const swiperElements = heroSection.querySelectorAll('*[class*="swiper-"], .swiper-pagination, .swiper-button-next, .swiper-button-prev')
      swiperElements.forEach(el => {
        el.remove()
      })

      // Observer les mutations pour supprimer tout élément Swiper ajouté dynamiquement
      const observer = new MutationObserver((mutations) => {
        mutations.forEach((mutation) => {
          mutation.addedNodes.forEach((node) => {
            if (node.nodeType === 1) { // Element node
              if (node.classList && (
                node.classList.toString().includes('swiper-') ||
                node.className.includes('swiper-')
              )) {
                node.remove()
              }
              // Vérifier les enfants aussi
              const childSwiperElements = node.querySelectorAll && node.querySelectorAll('*[class*="swiper-"], .swiper-pagination, .swiper-button-next, .swiper-button-prev')
              if (childSwiperElements) {
                childSwiperElements.forEach(child => child.remove())
              }
            }
          })
        })
      })

      observer.observe(heroSection, {
        childList: true,
        subtree: true
      })
    }
  })
})
</script>
