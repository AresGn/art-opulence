<template>
  <div>
    <Hero />
    <SkillsSection />
    <section class="py-20 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16 fade-in">
          <h2 class="text-4xl md:text-5xl font-bold mb-4 bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">
            Projets Récents
          </h2>
          <p class="text-xl text-gray-600 max-w-2xl mx-auto">
            Découvrez une sélection de mes créations les plus récentes,
            alliant créativité et expertise technique.
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 slide-up">
          <ProjectCard v-for="project in featuredProjects" :key="project.id" :project="project" class="hover-lift" />
        </div>

        <div class="text-center mt-16">
          <NuxtLink
            to="/projets"
            class="inline-flex items-center bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white px-10 py-4 rounded-full font-semibold text-lg transition-all duration-300"
          >
            Voir tous les projets
            <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
            </svg>
          </NuxtLink>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
const { getFeaturedProjects } = useProjects()
const featuredProjects = await getFeaturedProjects()

useSeoMeta({
  title: 'Art Opulence - Designer Graphique & Montage Vidéo',
  description: 'Portfolio de Art Opulence, designer graphique spécialisé en création d\'identités visuelles et montage vidéo professionnel. Découvrez mes créations : logos, flyers, affiches, bannières et vidéos.'
})
</script>
