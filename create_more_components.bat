@echo off
echo ========================================
echo   CRÉATION COMPOSANTS ET COMPOSABLES
echo ========================================
echo.

REM Composant SkillsSection
(
echo ^<template^>
echo   ^<section class="py-16 bg-gray-50"^>
echo     ^<div class="container mx-auto px-4"^>
echo       ^<h2 class="text-3xl font-bold text-center mb-12"^>Compétences^</h2^>
echo       ^<div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-8"^>
echo         ^<div v-for="skill in skills" :key="skill.name" class="text-center"^>
echo           ^<div class="bg-white rounded-lg p-6 shadow-md hover:shadow-lg transition-shadow"^>
echo             ^<div class="text-4xl mb-3"^>{{ skill.icon }}^</div^>
echo             ^<h3 class="font-semibold text-gray-800"^>{{ skill.name }}^</h3^>
echo           ^</div^>
echo         ^</div^>
echo       ^</div^>
echo     ^</div^>
echo   ^</section^>
echo ^</template^>
echo.
echo ^<script setup^>
echo const skills = [
echo   { name: 'Photoshop', icon: '🎨' },
echo   { name: 'Illustrator', icon: '✏️' },
echo   { name: 'After Effects', icon: '🎬' },
echo   { name: 'Premiere Pro', icon: '🎞️' },
echo   { name: 'InDesign', icon: '📄' },
echo   { name: 'Figma', icon: '🎯' }
echo ]
echo ^</script^>
) > components\SkillsSection.vue

REM Composant Navigation
(
echo ^<template^>
echo   ^<nav class="bg-white shadow-md sticky top-0 z-50"^>
echo     ^<div class="container mx-auto px-4"^>
echo       ^<div class="flex justify-between items-center py-4"^>
echo         ^<NuxtLink to="/" class="text-2xl font-bold text-gray-800"^>
echo           Portfolio
echo         ^</NuxtLink^>
echo         ^<div class="hidden md:flex space-x-8"^>
echo           ^<NuxtLink to="/" class="text-gray-600 hover:text-gray-900 transition-colors"^>Accueil^</NuxtLink^>
echo           ^<NuxtLink to="/projets" class="text-gray-600 hover:text-gray-900 transition-colors"^>Projets^</NuxtLink^>
echo           ^<NuxtLink to="/about" class="text-gray-600 hover:text-gray-900 transition-colors"^>À propos^</NuxtLink^>
echo           ^<NuxtLink to="/contact" class="text-gray-600 hover:text-gray-900 transition-colors"^>Contact^</NuxtLink^>
echo         ^</div^>
echo         ^<button @click="toggleMobile" class="md:hidden"^>
echo           ^<svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"^>
echo             ^<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"^>^</path^>
echo           ^</svg^>
echo         ^</button^>
echo       ^</div^>
echo       ^<div v-show="mobileOpen" class="md:hidden pb-4"^>
echo         ^<div class="flex flex-col space-y-2"^>
echo           ^<NuxtLink to="/" class="text-gray-600 hover:text-gray-900 transition-colors py-2"^>Accueil^</NuxtLink^>
echo           ^<NuxtLink to="/projets" class="text-gray-600 hover:text-gray-900 transition-colors py-2"^>Projets^</NuxtLink^>
echo           ^<NuxtLink to="/about" class="text-gray-600 hover:text-gray-900 transition-colors py-2"^>À propos^</NuxtLink^>
echo           ^<NuxtLink to="/contact" class="text-gray-600 hover:text-gray-900 transition-colors py-2"^>Contact^</NuxtLink^>
echo         ^</div^>
echo       ^</div^>
echo     ^</div^>
echo   ^</nav^>
echo ^</template^>
echo.
echo ^<script setup^>
echo const mobileOpen = ref(false)
echo.
echo const toggleMobile = () => {
echo   mobileOpen.value = !mobileOpen.value
echo }
echo ^</script^>
) > components\Navigation.vue

REM Composable useProjects
(
echo export const useProjects = () => {
echo   const projects = [
echo     {
echo       id: 'logo-restaurant-xyz',
echo       title: 'Logo Restaurant XYZ',
echo       category: 'logo',
echo       client: 'Restaurant XYZ',
echo       date: '2024-03',
echo       tools: ['Illustrator', 'Photoshop'],
echo       description: 'Création d\'une identité visuelle moderne pour un restaurant gastronomique.',
echo       images: [
echo         'https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Logo+Restaurant',
echo         'https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Variations'
echo       ],
echo       featured: true
echo     },
echo     {
echo       id: 'flyer-evenement-musical',
echo       title: 'Flyer Événement Musical',
echo       category: 'flyer',
echo       client: 'Festival de Musique',
echo       date: '2024-02',
echo       tools: ['Photoshop', 'InDesign'],
echo       description: 'Design d\'un flyer attractif pour un festival de musique électronique.',
echo       images: [
echo         'https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Flyer+Musical',
echo         'https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Version+Print'
echo       ],
echo       featured: true
echo     },
echo     {
echo       id: 'video-promo-entreprise',
echo       title: 'Vidéo Promo Entreprise',
echo       category: 'video',
echo       client: 'Tech Startup',
echo       date: '2024-01',
echo       tools: ['After Effects', 'Premiere Pro'],
echo       description: 'Montage vidéo promotionnel pour une startup technologique.',
echo       images: [
echo         'https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Video+Promo'
echo       ],
echo       video: 'https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Video+Preview',
echo       featured: true
echo     }
echo   ]
echo.
echo   const getAllProjects = () => {
echo     return projects
echo   }
echo.
echo   const getFeaturedProjects = () => {
echo     return projects.filter(project => project.featured)
echo   }
echo.
echo   const getProjectById = (id) => {
echo     return projects.find(project => project.id === id)
echo   }
echo.
echo   const getProjectsByCategory = (category) => {
echo     return projects.filter(project => project.category === category)
echo   }
echo.
echo   return {
echo     getAllProjects,
echo     getFeaturedProjects,
echo     getProjectById,
echo     getProjectsByCategory
echo   }
echo }
) > composables\useProjects.js

REM Composable useCloudinary
(
echo export const useCloudinary = () => {
echo   const cloudName = 'your-cloud-name' // À remplacer par votre cloud name Cloudinary
echo.
echo   const getOptimizedImageUrl = (publicId, options = {}) => {
echo     const {
echo       width = 'auto',
echo       height = 'auto',
echo       crop = 'fill',
echo       quality = 'auto',
echo       format = 'auto'
echo     } = options
echo.
echo     const transformations = [
echo       `w_${width}`,
echo       `h_${height}`,
echo       `c_${crop}`,
echo       `q_${quality}`,
echo       `f_${format}`
echo     ].join(',')
echo.
echo     return `https://res.cloudinary.com/${cloudName}/image/upload/${transformations}/${publicId}`
echo   }
echo.
echo   const getVideoUrl = (publicId, options = {}) => {
echo     const {
echo       quality = 'auto',
echo       format = 'auto'
echo     } = options
echo.
echo     const transformations = [
echo       `q_${quality}`,
echo       `f_${format}`
echo     ].join(',')
echo.
echo     return `https://res.cloudinary.com/${cloudName}/video/upload/${transformations}/${publicId}`
echo   }
echo.
echo   return {
echo     getOptimizedImageUrl,
echo     getVideoUrl
echo   }
echo }
) > composables\useCloudinary.js

REM Page détail projet
(
echo ^<template^>
echo   ^<div v-if="project" class="container mx-auto px-4 py-16"^>
echo     ^<div class="max-w-4xl mx-auto"^>
echo       ^<div class="mb-8"^>
echo         ^<NuxtLink to="/projets" class="text-blue-600 hover:text-blue-800 mb-4 inline-block"^>
echo           ← Retour aux projets
echo         ^</NuxtLink^>
echo         ^<h1 class="text-4xl font-bold mb-4"^>{{ project.title }}^</h1^>
echo         ^<div class="flex flex-wrap gap-4 text-gray-600 mb-6"^>
echo           ^<span^>Client: {{ project.client }}^</span^>
echo           ^<span^>Date: {{ project.date }}^</span^>
echo         ^</div^>
echo       ^</div^>
echo.
echo       ^<div class="mb-12"^>
echo         ^<ProjectSlider :images="project.images" :alt="project.title" /^>
echo       ^</div^>
echo.
echo       ^<div class="grid grid-cols-1 lg:grid-cols-3 gap-8"^>
echo         ^<div class="lg:col-span-2"^>
echo           ^<h2 class="text-2xl font-semibold mb-4"^>Description^</h2^>
echo           ^<p class="text-gray-600 leading-relaxed"^>{{ project.description }}^</p^>
echo         ^</div^>
echo         ^<div^>
echo           ^<h3 class="text-xl font-semibold mb-4"^>Outils utilisés^</h3^>
echo           ^<div class="flex flex-wrap gap-2"^>
echo             ^<span 
echo               v-for="tool in project.tools" 
echo               :key="tool"
echo               class="bg-blue-100 text-blue-800 px-3 py-1 rounded-full text-sm"
echo             ^>
echo               {{ tool }}
echo             ^</span^>
echo           ^</div^>
echo         ^</div^>
echo       ^</div^>
echo     ^</div^>
echo   ^</div^>
echo   ^<div v-else class="container mx-auto px-4 py-16 text-center"^>
echo     ^<h1 class="text-2xl font-bold text-gray-600"^>Projet non trouvé^</h1^>
echo   ^</div^>
echo ^</template^>
echo.
echo ^<script setup^>
echo const route = useRoute()
echo const { getProjectById } = useProjects()
echo.
echo const project = getProjectById(route.params.slug)
echo.
echo if (project) {
echo   useSeoMeta({
echo     title: `${project.title} - Portfolio Designer Graphique`,
echo     description: project.description
echo   })
echo }
echo ^</script^>
) > pages\projets\[slug].vue

echo.
echo ========================================
echo   TOUS LES FICHIERS CRÉÉS !
echo ========================================
echo.
echo Structure complète créée :
echo ✓ Pages : index, about, contact, projets
echo ✓ Composants : Hero, ProjectCard, ProjectSlider, ContactForm, SkillsSection, Navigation
echo ✓ Composables : useProjects, useCloudinary
echo ✓ Configuration Nuxt 3 + Tailwind CSS
echo.
pause
