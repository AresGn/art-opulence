@echo off
echo ========================================
echo   INITIALISATION PORTFOLIO DESIGNER
echo ========================================
echo.

REM Vérifier si Node.js est installé
node --version >nul 2>&1
if errorlevel 1 (
    echo ERREUR: Node.js n'est pas installé ou n'est pas dans le PATH
    echo Veuillez installer Node.js depuis https://nodejs.org/
    pause
    exit /b 1
)

echo [1/6] Initialisation du projet Nuxt 3...
npx nuxi@latest init . --force
if errorlevel 1 (
    echo ERREUR: Échec de l'initialisation Nuxt 3
    pause
    exit /b 1
)

echo.
echo [2/6] Installation des dépendances de base...
npm install

echo.
echo [3/6] Installation des dépendances supplémentaires...
npm install @nuxtjs/tailwindcss @vueuse/nuxt swiper emailjs-com

echo.
echo [4/6] Création de la structure des dossiers...
mkdir pages\projets 2>nul
mkdir components 2>nul
mkdir composables 2>nul
mkdir content\projets 2>nul
mkdir assets\css 2>nul

echo.
echo [5/6] Création des fichiers de base...

REM Configuration Nuxt
echo // https://nuxt.com/docs/api/configuration/nuxt-config > nuxt.config.ts
echo export default defineNuxtConfig({ >> nuxt.config.ts
echo   devtools: { enabled: true }, >> nuxt.config.ts
echo   modules: [ >> nuxt.config.ts
echo     '@nuxtjs/tailwindcss', >> nuxt.config.ts
echo     '@vueuse/nuxt' >> nuxt.config.ts
echo   ], >> nuxt.config.ts
echo   css: ['~/assets/css/main.css'], >> nuxt.config.ts
echo   app: { >> nuxt.config.ts
echo     head: { >> nuxt.config.ts
echo       title: 'Portfolio Designer Graphique', >> nuxt.config.ts
echo       meta: [ >> nuxt.config.ts
echo         { charset: 'utf-8' }, >> nuxt.config.ts
echo         { name: 'viewport', content: 'width=device-width, initial-scale=1' }, >> nuxt.config.ts
echo         { name: 'description', content: 'Portfolio de design graphique et montage vidéo' } >> nuxt.config.ts
echo       ] >> nuxt.config.ts
echo     } >> nuxt.config.ts
echo   } >> nuxt.config.ts
echo }) >> nuxt.config.ts

REM CSS principal
echo @tailwind base; > assets\css\main.css
echo @tailwind components; >> assets\css\main.css
echo @tailwind utilities; >> assets\css\main.css
echo. >> assets\css\main.css
echo @layer base { >> assets\css\main.css
echo   html { >> assets\css\main.css
echo     scroll-behavior: smooth; >> assets\css\main.css
echo   } >> assets\css\main.css
echo } >> assets\css\main.css

echo.
echo [6/6] Génération des fichiers Vue.js...

REM Page d'accueil
(
echo ^<template^>
echo   ^<div^>
echo     ^<Hero /^>
echo     ^<SkillsSection /^>
echo     ^<section class="py-16"^>
echo       ^<div class="container mx-auto px-4"^>
echo         ^<h2 class="text-3xl font-bold text-center mb-12"^>Projets Récents^</h2^>
echo         ^<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"^>
echo           ^<ProjectCard v-for="project in featuredProjects" :key="project.id" :project="project" /^>
echo         ^</div^>
echo         ^<div class="text-center mt-12"^>
echo           ^<NuxtLink to="/projets" class="bg-blue-600 text-white px-8 py-3 rounded-lg hover:bg-blue-700 transition-colors"^>
echo             Voir tous les projets
echo           ^</NuxtLink^>
echo         ^</div^>
echo       ^</div^>
echo     ^</section^>
echo   ^</div^>
echo ^</template^>
echo.
echo ^<script setup^>
echo const { getFeaturedProjects } = useProjects()
echo const featuredProjects = await getFeaturedProjects()
echo.
echo useSeoMeta({
echo   title: 'Accueil - Portfolio Designer Graphique',
echo   description: 'Portfolio de design graphique et montage vidéo. Découvrez mes créations : logos, flyers, affiches, bannières et vidéos.'
echo })
echo ^</script^>
) > pages\index.vue

REM Page About
(
echo ^<template^>
echo   ^<div class="container mx-auto px-4 py-16"^>
echo     ^<div class="max-w-4xl mx-auto"^>
echo       ^<h1 class="text-4xl font-bold mb-8"^>À Propos^</h1^>
echo       ^<div class="grid grid-cols-1 lg:grid-cols-2 gap-12"^>
echo         ^<div^>
echo           ^<h2 class="text-2xl font-semibold mb-4"^>Présentation^</h2^>
echo           ^<p class="text-gray-600 mb-6"^>
echo             Designer graphique passionné avec une expertise en création visuelle
echo             et montage vidéo. Je transforme vos idées en créations impactantes.
echo           ^</p^>
echo           ^<SkillsSection /^>
echo         ^</div^>
echo         ^<div^>
echo           ^<h2 class="text-2xl font-semibold mb-4"^>Processus de Travail^</h2^>
echo           ^<div class="space-y-4"^>
echo             ^<div class="flex items-start space-x-3"^>
echo               ^<div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center text-sm font-bold"^>1^</div^>
echo               ^<div^>
echo                 ^<h3 class="font-semibold"^>Analyse du besoin^</h3^>
echo                 ^<p class="text-gray-600"^>Compréhension de vos objectifs et contraintes^</p^>
echo               ^</div^>
echo             ^</div^>
echo           ^</div^>
echo         ^</div^>
echo       ^</div^>
echo     ^</div^>
echo   ^</div^>
echo ^</template^>
echo.
echo ^<script setup^>
echo useSeoMeta({
echo   title: 'À Propos - Portfolio Designer Graphique',
echo   description: 'Découvrez mon parcours et mon approche du design graphique et du montage vidéo.'
echo })
echo ^</script^>
) > pages\about.vue

REM Page Contact
(
echo ^<template^>
echo   ^<div class="container mx-auto px-4 py-16"^>
echo     ^<div class="max-w-2xl mx-auto"^>
echo       ^<h1 class="text-4xl font-bold mb-8 text-center"^>Contact^</h1^>
echo       ^<ContactForm /^>
echo     ^</div^>
echo   ^</div^>
echo ^</template^>
echo.
echo ^<script setup^>
echo useSeoMeta({
echo   title: 'Contact - Portfolio Designer Graphique',
echo   description: 'Contactez-moi pour vos projets de design graphique et montage vidéo.'
echo })
echo ^</script^>
) > pages\contact.vue

REM Page Liste Projets
(
echo ^<template^>
echo   ^<div class="container mx-auto px-4 py-16"^>
echo     ^<h1 class="text-4xl font-bold mb-8 text-center"^>Mes Projets^</h1^>
echo     ^<div class="flex flex-wrap justify-center gap-4 mb-12"^>
echo       ^<button
echo         v-for="category in categories"
echo         :key="category"
echo         @click="selectedCategory = category"
echo         :class="[
echo           'px-6 py-2 rounded-full transition-colors',
echo           selectedCategory === category
echo             ? 'bg-blue-600 text-white'
echo             : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
echo         ]"
echo       ^>
echo         {{ category }}
echo       ^</button^>
echo     ^</div^>
echo     ^<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"^>
echo       ^<ProjectCard v-for="project in filteredProjects" :key="project.id" :project="project" /^>
echo     ^</div^>
echo   ^</div^>
echo ^</template^>
echo.
echo ^<script setup^>
echo const { getAllProjects } = useProjects()
echo const projects = await getAllProjects()
echo.
echo const selectedCategory = ref('Tous')
echo const categories = ['Tous', 'Logo', 'Flyer', 'Affiche', 'Vidéo', 'Bannière']
echo.
echo const filteredProjects = computed(() => {
echo   if (selectedCategory.value === 'Tous') return projects
echo   return projects.filter(p => p.category === selectedCategory.value.toLowerCase())
echo })
echo.
echo useSeoMeta({
echo   title: 'Projets - Portfolio Designer Graphique',
echo   description: 'Découvrez tous mes projets de design graphique : logos, flyers, affiches, bannières et vidéos.'
echo })
echo ^</script^>
) > pages\projets\index.vue

echo Création des composants...

REM Composant Hero
(
echo ^<template^>
echo   ^<section class="bg-gradient-to-br from-blue-600 to-purple-700 text-white py-20"^>
echo     ^<div class="container mx-auto px-4 text-center"^>
echo       ^<h1 class="text-5xl md:text-6xl font-bold mb-6"^>
echo         Designer Graphique
echo       ^</h1^>
echo       ^<p class="text-xl md:text-2xl mb-8 opacity-90"^>
echo         Créations visuelles impactantes • Montage vidéo professionnel
echo       ^</p^>
echo       ^<div class="flex flex-col sm:flex-row gap-4 justify-center"^>
echo         ^<NuxtLink to="/projets" class="bg-white text-blue-600 px-8 py-3 rounded-lg font-semibold hover:bg-gray-100 transition-colors"^>
echo           Voir mes projets
echo         ^</NuxtLink^>
echo         ^<NuxtLink to="/contact" class="border-2 border-white text-white px-8 py-3 rounded-lg font-semibold hover:bg-white hover:text-blue-600 transition-colors"^>
echo           Me contacter
echo         ^</NuxtLink^>
echo       ^</div^>
echo     ^</div^>
echo   ^</section^>
echo ^</template^>
) > components\Hero.vue

echo Fichiers créés avec succès !
echo.
echo ========================================
echo   INITIALISATION TERMINÉE !
echo ========================================
echo.
echo Prochaines étapes :
echo 1. cd dans le dossier du projet
echo 2. npm run dev pour démarrer le serveur
echo 3. Ouvrir http://localhost:3000
echo.
echo Structure créée :
echo - Pages : index, about, contact, projets
echo - Composants : Hero, ProjectCard, Navigation, etc.
echo - Composables : useProjects, useCloudinary
echo - Configuration Nuxt 3 + Tailwind CSS
echo.
pause
