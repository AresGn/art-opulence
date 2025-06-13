@echo off
echo ========================================
echo   CRÉATION DES COMPOSANTS RESTANTS
echo ========================================
echo.

REM Composant ProjectCard
(
echo ^<template^>
echo   ^<div class="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow duration-300"^>
echo     ^<div class="relative group"^>
echo       ^<img 
echo         :src="project.images[0]" 
echo         :alt="project.title"
echo         class="w-full h-64 object-cover group-hover:scale-105 transition-transform duration-300"
echo       ^>
echo       ^<div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-opacity duration-300 flex items-center justify-center"^>
echo         ^<NuxtLink 
echo           :to="`/projets/${project.id}`"
echo           class="bg-white text-gray-900 px-6 py-2 rounded-lg opacity-0 group-hover:opacity-100 transition-opacity duration-300 font-semibold"
echo         ^>
echo           Voir le projet
echo         ^</NuxtLink^>
echo       ^</div^>
echo     ^</div^>
echo     ^<div class="p-6"^>
echo       ^<h3 class="text-xl font-semibold mb-2"^>{{ project.title }}^</h3^>
echo       ^<p class="text-gray-600 mb-3"^>{{ project.client }}^</p^>
echo       ^<div class="flex flex-wrap gap-2"^>
echo         ^<span 
echo           v-for="tool in project.tools" 
echo           :key="tool"
echo           class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"
echo         ^>
echo           {{ tool }}
echo         ^</span^>
echo       ^</div^>
echo     ^</div^>
echo   ^</div^>
echo ^</template^>
echo.
echo ^<script setup^>
echo defineProps({
echo   project: {
echo     type: Object,
echo     required: true
echo   }
echo })
echo ^</script^>
) > components\ProjectCard.vue

REM Composant ProjectSlider
(
echo ^<template^>
echo   ^<div class="swiper-container"^>
echo     ^<div class="swiper-wrapper"^>
echo       ^<div v-for="image in images" :key="image" class="swiper-slide"^>
echo         ^<img :src="image" :alt="alt" class="w-full h-auto rounded-lg" ^>
echo       ^</div^>
echo     ^</div^>
echo     ^<div class="swiper-pagination"^>^</div^>
echo     ^<div class="swiper-button-next"^>^</div^>
echo     ^<div class="swiper-button-prev"^>^</div^>
echo   ^</div^>
echo ^</template^>
echo.
echo ^<script setup^>
echo import { Swiper, Navigation, Pagination } from 'swiper'
echo import 'swiper/css'
echo import 'swiper/css/navigation'
echo import 'swiper/css/pagination'
echo.
echo const props = defineProps({
echo   images: {
echo     type: Array,
echo     required: true
echo   },
echo   alt: {
echo     type: String,
echo     default: 'Project image'
echo   }
echo })
echo.
echo onMounted(() => {
echo   new Swiper('.swiper-container', {
echo     modules: [Navigation, Pagination],
echo     navigation: {
echo       nextEl: '.swiper-button-next',
echo       prevEl: '.swiper-button-prev',
echo     },
echo     pagination: {
echo       el: '.swiper-pagination',
echo       clickable: true,
echo     },
echo     loop: true,
echo     autoplay: {
echo       delay: 5000,
echo     },
echo   })
echo })
echo ^</script^>
) > components\ProjectSlider.vue

REM Composant ContactForm
(
echo ^<template^>
echo   ^<form @submit.prevent="submitForm" class="space-y-6"^>
echo     ^<div^>
echo       ^<label for="name" class="block text-sm font-medium text-gray-700 mb-2"^>Nom^</label^>
echo       ^<input 
echo         v-model="form.name"
echo         type="text" 
echo         id="name" 
echo         required
echo         class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
echo       ^>
echo     ^</div^>
echo     ^<div^>
echo       ^<label for="email" class="block text-sm font-medium text-gray-700 mb-2"^>Email^</label^>
echo       ^<input 
echo         v-model="form.email"
echo         type="email" 
echo         id="email" 
echo         required
echo         class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
echo       ^>
echo     ^</div^>
echo     ^<div^>
echo       ^<label for="projectType" class="block text-sm font-medium text-gray-700 mb-2"^>Type de projet^</label^>
echo       ^<select 
echo         v-model="form.projectType"
echo         id="projectType"
echo         class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
echo       ^>
echo         ^<option value=""^>Sélectionnez un type^</option^>
echo         ^<option value="logo"^>Logo^</option^>
echo         ^<option value="flyer"^>Flyer^</option^>
echo         ^<option value="affiche"^>Affiche^</option^>
echo         ^<option value="video"^>Vidéo^</option^>
echo         ^<option value="banniere"^>Bannière^</option^>
echo         ^<option value="autre"^>Autre^</option^>
echo       ^</select^>
echo     ^</div^>
echo     ^<div^>
echo       ^<label for="message" class="block text-sm font-medium text-gray-700 mb-2"^>Message^</label^>
echo       ^<textarea 
echo         v-model="form.message"
echo         id="message" 
echo         rows="5"
echo         required
echo         class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
echo       ^>^</textarea^>
echo     ^</div^>
echo     ^<button 
echo       type="submit"
echo       :disabled="isSubmitting"
echo       class="w-full bg-blue-600 text-white py-3 px-6 rounded-lg hover:bg-blue-700 disabled:opacity-50 transition-colors"
echo     ^>
echo       {{ isSubmitting ? 'Envoi en cours...' : 'Envoyer le message' }}
echo     ^</button^>
echo   ^</form^>
echo ^</template^>
echo.
echo ^<script setup^>
echo const form = reactive({
echo   name: '',
echo   email: '',
echo   projectType: '',
echo   message: ''
echo })
echo.
echo const isSubmitting = ref(false)
echo.
echo const submitForm = async () => {
echo   isSubmitting.value = true
echo   // Ici vous pouvez intégrer EmailJS ou Formspree
echo   console.log('Form submitted:', form)
echo   // Simulation d'envoi
echo   await new Promise(resolve => setTimeout(resolve, 1000))
echo   isSubmitting.value = false
echo   alert('Message envoyé avec succès !')
echo }
echo ^</script^>
) > components\ContactForm.vue

echo Composants créés avec succès !
echo - ProjectCard.vue
echo - ProjectSlider.vue  
echo - ContactForm.vue
echo.
echo Exécutez create_more_components.bat pour créer les composants restants...
pause
