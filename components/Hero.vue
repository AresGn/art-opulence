<template>
  <section class="hero-section bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900 text-white h-screen flex items-center justify-center overflow-hidden">
    <div class="container mx-auto px-6 text-center w-full max-w-full">
      <div class="max-w-4xl mx-auto w-full">
        <div class="fade-in space-y-4">
          <p class="text-base md:text-lg text-purple-200 font-medium">
            Bonjour, je suis
          </p>
          <h1 class="text-4xl sm:text-5xl md:text-6xl lg:text-7xl font-bold bg-gradient-to-r from-purple-400 to-pink-400 bg-clip-text text-transparent leading-tight">
            Art Opulence
          </h1>
          <div class="text-xl sm:text-2xl md:text-3xl font-light text-white space-y-2">
            <span class="block">Designer Graphique</span>
            <span class="text-sm sm:text-base md:text-lg text-purple-200 block">
              Créations visuelles impactantes • Montage vidéo professionnel
            </span>
          </div>
        </div>

        <div class="flex flex-col sm:flex-row gap-4 justify-center items-center mt-8 slide-up w-full max-w-lg mx-auto">
          <NuxtLink
            to="/projets"
            class="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white px-6 py-3 rounded-full font-semibold text-sm md:text-base transition-all duration-300 hover:scale-105 hover:shadow-xl text-center w-full sm:w-auto min-w-[140px]"
          >
            Mes projets
          </NuxtLink>

          <NuxtLink
            to="/contact"
            class="border-2 border-white/30 bg-white/10 hover:bg-white hover:text-slate-900 text-white px-6 py-3 rounded-full font-semibold text-sm md:text-base transition-all duration-300 hover:scale-105 text-center w-full sm:w-auto min-w-[140px]"
          >
            Contact
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

      // ÉLIMINER COMPLÈTEMENT tout défilement (horizontal ET vertical)
      heroSection.style.overflow = 'hidden'
      heroSection.style.maxWidth = '100vw'
      heroSection.style.maxHeight = '100vh'
      heroSection.style.height = '100vh'
      heroSection.style.width = '100%'
      heroSection.style.boxSizing = 'border-box'

      // Appliquer les mêmes règles à tous les enfants
      const allElements = heroSection.querySelectorAll('*')
      allElements.forEach(el => {
        el.style.overflow = 'hidden'
        el.style.maxWidth = '100%'
        el.style.maxHeight = '100%'
        el.style.boxSizing = 'border-box'
        el.style.wordWrap = 'break-word'
        el.style.overflowWrap = 'break-word'
      })

      // Observer les mutations pour supprimer tout élément Swiper ajouté dynamiquement
      const observer = new MutationObserver((mutations) => {
        mutations.forEach((mutation) => {
          mutation.addedNodes.forEach((node) => {
            if (node.nodeType === 1) { // Element node
              // Supprimer les éléments Swiper
              if (node.classList && (
                node.classList.toString().includes('swiper-') ||
                node.className.includes('swiper-')
              )) {
                node.remove()
              }

              // Appliquer les règles anti-défilement (horizontal ET vertical)
              node.style.overflow = 'hidden'
              node.style.maxWidth = '100%'
              node.style.maxHeight = '100%'
              node.style.boxSizing = 'border-box'

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
