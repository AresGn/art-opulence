@echo off
echo ========================================
echo   CRÉATION LAYOUT ET DONNÉES
echo ========================================
echo.

REM Créer le dossier layouts s'il n'existe pas
mkdir layouts 2>nul

REM Layout par défaut
(
echo ^<template^>
echo   ^<div^>
echo     ^<Navigation /^>
echo     ^<main^>
echo       ^<slot /^>
echo     ^</main^>
echo     ^<footer class="bg-gray-800 text-white py-12"^>
echo       ^<div class="container mx-auto px-4"^>
echo         ^<div class="grid grid-cols-1 md:grid-cols-3 gap-8"^>
echo           ^<div^>
echo             ^<h3 class="text-xl font-semibold mb-4"^>Portfolio Designer^</h3^>
echo             ^<p class="text-gray-300"^>
echo               Créations visuelles impactantes et montage vidéo professionnel.
echo             ^</p^>
echo           ^</div^>
echo           ^<div^>
echo             ^<h3 class="text-xl font-semibold mb-4"^>Navigation^</h3^>
echo             ^<ul class="space-y-2"^>
echo               ^<li^>^<NuxtLink to="/" class="text-gray-300 hover:text-white transition-colors"^>Accueil^</NuxtLink^>^</li^>
echo               ^<li^>^<NuxtLink to="/projets" class="text-gray-300 hover:text-white transition-colors"^>Projets^</NuxtLink^>^</li^>
echo               ^<li^>^<NuxtLink to="/about" class="text-gray-300 hover:text-white transition-colors"^>À propos^</NuxtLink^>^</li^>
echo               ^<li^>^<NuxtLink to="/contact" class="text-gray-300 hover:text-white transition-colors"^>Contact^</NuxtLink^>^</li^>
echo             ^</ul^>
echo           ^</div^>
echo           ^<div^>
echo             ^<h3 class="text-xl font-semibold mb-4"^>Contact^</h3^>
echo             ^<div class="space-y-2 text-gray-300"^>
echo               ^<p^>email@example.com^</p^>
echo               ^<p^>+33 1 23 45 67 89^</p^>
echo               ^<div class="flex space-x-4 mt-4"^>
echo                 ^<a href="#" class="text-gray-300 hover:text-white transition-colors"^>LinkedIn^</a^>
echo                 ^<a href="#" class="text-gray-300 hover:text-white transition-colors"^>Instagram^</a^>
echo                 ^<a href="#" class="text-gray-300 hover:text-white transition-colors"^>Behance^</a^>
echo               ^</div^>
echo             ^</div^>
echo           ^</div^>
echo         ^</div^>
echo         ^<div class="border-t border-gray-700 mt-8 pt-8 text-center text-gray-300"^>
echo           ^<p^>&copy; 2024 Portfolio Designer Graphique. Tous droits réservés.^</p^>
echo         ^</div^>
echo       ^</div^>
echo     ^</footer^>
echo   ^</div^>
echo ^</template^>
) > layouts\default.vue

REM Créer des données de projets en JSON
(
echo [
echo   {
echo     "id": "logo-restaurant-xyz",
echo     "title": "Logo Restaurant XYZ",
echo     "category": "logo",
echo     "client": "Restaurant XYZ",
echo     "date": "2024-03",
echo     "tools": ["Illustrator", "Photoshop"],
echo     "description": "Création d'une identité visuelle moderne et élégante pour un restaurant gastronomique. Le logo combine sophistication et accessibilité, reflétant l'excellence culinaire tout en restant mémorable.",
echo     "images": [
echo       "https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Logo+Principal",
echo       "https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Variations+Logo",
echo       "https://via.placeholder.com/800x600/3B82F6/FFFFFF?text=Applications"
echo     ],
echo     "featured": true
echo   },
echo   {
echo     "id": "flyer-evenement-musical",
echo     "title": "Flyer Événement Musical",
echo     "category": "flyer",
echo     "client": "Festival de Musique Électronique",
echo     "date": "2024-02",
echo     "tools": ["Photoshop", "InDesign"],
echo     "description": "Design d'un flyer vibrant et énergique pour un festival de musique électronique. Utilisation de couleurs néon et d'effets visuels pour capturer l'atmosphère électrisante de l'événement.",
echo     "images": [
echo       "https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Flyer+Recto",
echo       "https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Flyer+Verso",
echo       "https://via.placeholder.com/800x600/8B5CF6/FFFFFF?text=Version+Web"
echo     ],
echo     "featured": true
echo   },
echo   {
echo     "id": "video-promo-entreprise",
echo     "title": "Vidéo Promo Entreprise",
echo     "category": "video",
echo     "client": "Tech Startup Innovation",
echo     "date": "2024-01",
echo     "tools": ["After Effects", "Premiere Pro", "Illustrator"],
echo     "description": "Montage vidéo promotionnel dynamique pour une startup technologique. Animation de logos, transitions fluides et storytelling visuel pour présenter les services de l'entreprise.",
echo     "images": [
echo       "https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Video+Thumbnail",
echo       "https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Storyboard",
echo       "https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Behind+Scenes"
echo     ],
echo     "video": "https://via.placeholder.com/800x600/EF4444/FFFFFF?text=Video+Preview",
echo     "featured": true
echo   },
echo   {
echo     "id": "affiche-cinema",
echo     "title": "Affiche Cinéma Indépendant",
echo     "category": "affiche",
echo     "client": "Production Cinéma Indé",
echo     "date": "2023-12",
echo     "tools": ["Photoshop", "Illustrator"],
echo     "description": "Création d'une affiche de film dramatique avec une approche minimaliste mais impactante. Jeu sur les contrastes et la typographie pour créer une atmosphère mystérieuse.",
echo     "images": [
echo       "https://via.placeholder.com/800x600/10B981/FFFFFF?text=Affiche+Finale",
echo       "https://via.placeholder.com/800x600/10B981/FFFFFF?text=Concepts+Initiaux",
echo       "https://via.placeholder.com/800x600/10B981/FFFFFF?text=Déclinaisons"
echo     ],
echo     "featured": false
echo   },
echo   {
echo     "id": "banniere-web-ecommerce",
echo     "title": "Bannières Web E-commerce",
echo     "category": "banniere",
echo     "client": "Boutique Mode Online",
echo     "date": "2023-11",
echo     "tools": ["Photoshop", "After Effects"],
echo     "description": "Série de bannières web animées pour une boutique de mode en ligne. Design moderne et accrocheur avec animations subtiles pour améliorer l'engagement utilisateur.",
echo     "images": [
echo       "https://via.placeholder.com/800x600/F59E0B/FFFFFF?text=Banniere+Hero",
echo       "https://via.placeholder.com/800x600/F59E0B/FFFFFF?text=Banniere+Promo",
echo       "https://via.placeholder.com/800x600/F59E0B/FFFFFF?text=Banniere+Mobile"
echo     ],
echo     "featured": false
echo   }
echo ]
) > content\projets\projects.json

REM Créer un fichier README pour le projet
(
echo # Portfolio Designer Graphique
echo.
echo Portfolio moderne créé avec Nuxt 3, Vue 3 et Tailwind CSS.
echo.
echo ## Installation
echo.
echo ```bash
echo npm install
echo ```
echo.
echo ## Développement
echo.
echo ```bash
echo npm run dev
echo ```
echo.
echo ## Build
echo.
echo ```bash
echo npm run build
echo ```
echo.
echo ## Structure du projet
echo.
echo - `pages/` - Pages de l'application
echo - `components/` - Composants Vue réutilisables
echo - `composables/` - Fonctions composables Vue
echo - `content/` - Données des projets
echo - `layouts/` - Layouts de l'application
echo - `assets/` - Assets statiques
echo.
echo ## Fonctionnalités
echo.
echo - ✅ Design responsive
echo - ✅ Navigation fluide
echo - ✅ Galerie de projets avec filtres
echo - ✅ Formulaire de contact
echo - ✅ SEO optimisé
echo - ✅ Performance optimisée
echo.
echo ## Technologies utilisées
echo.
echo - Nuxt 3
echo - Vue 3 (Composition API)
echo - Tailwind CSS
echo - Swiper.js
echo - VueUse
echo.
echo ## Configuration
echo.
echo 1. Remplacez les images placeholder par vos vraies images
echo 2. Configurez Cloudinary dans `composables/useCloudinary.js`
echo 3. Configurez EmailJS dans `components/ContactForm.vue`
echo 4. Personnalisez les données dans `content/projets/`
) > README.md

echo.
echo ========================================
echo   LAYOUT ET DONNÉES CRÉÉS !
echo ========================================
echo.
echo Fichiers ajoutés :
echo ✓ layouts/default.vue - Layout principal avec navigation et footer
echo ✓ content/projets/projects.json - Données d'exemple des projets
echo ✓ README.md - Documentation du projet
echo.
echo Le projet est maintenant complet !
echo.
pause
