<template>
  <div>
    <Navigation />
    <main>
      <slot />
    </main>
    <footer class="bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900 text-white py-16">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8 mb-12">
          <!-- À propos -->
          <div class="md:col-span-2">
            <h3 class="text-2xl font-bold bg-gradient-to-r from-purple-400 to-pink-400 bg-clip-text text-transparent mb-4">
Art Opulence
            </h3>
            <p class="text-gray-300 mb-4 leading-relaxed">
              Designer graphique passionné spécialisé dans la création d'identités visuelles impactantes et le montage vidéo professionnel.
              Je transforme vos idées en créations visuelles mémorables.
            </p>
            <div class="flex space-x-4">
              <a href="#" class="bg-white/10 hover:bg-white/20 p-3 rounded-full transition-all duration-300 hover:scale-110">
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                </svg>
              </a>
              <a href="#" class="bg-white/10 hover:bg-white/20 p-3 rounded-full transition-all duration-300 hover:scale-110">
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M12.017 0C5.396 0 .029 5.367.029 11.987c0 5.079 3.158 9.417 7.618 11.174-.105-.949-.199-2.403.041-3.439.219-.937 1.406-5.957 1.406-5.957s-.359-.72-.359-1.781c0-1.663.967-2.911 2.168-2.911 1.024 0 1.518.769 1.518 1.688 0 1.029-.653 2.567-.992 3.992-.285 1.193.6 2.165 1.775 2.165 2.128 0 3.768-2.245 3.768-5.487 0-2.861-2.063-4.869-5.008-4.869-3.41 0-5.409 2.562-5.409 5.199 0 1.033.394 2.143.889 2.741.099.12.112.225.085.345-.09.375-.293 1.199-.334 1.363-.053.225-.172.271-.402.165-1.495-.69-2.433-2.878-2.433-4.646 0-3.776 2.748-7.252 7.92-7.252 4.158 0 7.392 2.967 7.392 6.923 0 4.135-2.607 7.462-6.233 7.462-1.214 0-2.357-.629-2.748-1.378l-.748 2.853c-.271 1.043-1.002 2.35-1.492 3.146C9.57 23.812 10.763 24.009 12.017 24c6.624 0 11.99-5.367 11.99-11.987C24.007 5.367 18.641.001 12.017.001z"/>
                </svg>
              </a>
              <a href="#" class="bg-white/10 hover:bg-white/20 p-3 rounded-full transition-all duration-300 hover:scale-110">
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M6.5 21.5h-5v-13h5v13zM4 6.5C2.5 6.5 1.5 5.3 1.5 4s1-2.4 2.5-2.4c1.6 0 2.5 1.1 2.5 2.4 0 1.3-0.9 2.5-2.5 2.5zM23.5 21.5h-5v-6.6c0-1.6-0.6-2.6-2-2.6-1.1 0-1.7 0.7-2 1.4-0.1 0.3-0.1 0.6-0.1 1v6.8h-5s0.1-11.1 0-12.2h5v1.7c0.7-1.1 1.9-2.6 4.5-2.6 3.3 0 5.7 2.1 5.7 6.7v6.4z"/>
                </svg>
              </a>
              <a href="#" class="bg-white/10 hover:bg-white/20 p-3 rounded-full transition-all duration-300 hover:scale-110">
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
                </svg>
              </a>
            </div>
          </div>

          <!-- Navigation rapide -->
          <div>
            <h3 class="text-xl font-semibold mb-4 text-white">Navigation</h3>
            <ul class="space-y-3">
              <li>
                <NuxtLink to="/" class="text-gray-300 hover:text-white hover:translate-x-1 transition-all duration-300 inline-block">
                  → Accueil
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/projets" class="text-gray-300 hover:text-white hover:translate-x-1 transition-all duration-300 inline-block">
                  → Projets
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/about" class="text-gray-300 hover:text-white hover:translate-x-1 transition-all duration-300 inline-block">
                  → À propos
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/contact" class="text-gray-300 hover:text-white hover:translate-x-1 transition-all duration-300 inline-block">
                  → Contact
                </NuxtLink>
              </li>
            </ul>
          </div>

          <!-- Services -->
          <div>
            <h3 class="text-xl font-semibold mb-4 text-white">Services</h3>
            <ul class="space-y-3 text-gray-300">
              <li class="flex items-center">
                <span class="w-2 h-2 bg-purple-400 rounded-full mr-3"></span>
                Design Graphique
              </li>
              <li class="flex items-center">
                <span class="w-2 h-2 bg-pink-400 rounded-full mr-3"></span>
                Identité Visuelle
              </li>
              <li class="flex items-center">
                <span class="w-2 h-2 bg-purple-400 rounded-full mr-3"></span>
                Montage Vidéo
              </li>
              <li class="flex items-center">
                <span class="w-2 h-2 bg-pink-400 rounded-full mr-3"></span>
                Motion Design
              </li>
            </ul>
          </div>
        </div>

        <!-- Ligne de séparation et copyright -->
        <div class="border-t border-gray-700 pt-8 text-center">
          <p class="text-gray-300 mb-2">
            &copy; 2024 <span class="font-semibold text-white">Ramel Granes Boulamidas</span> - Tous droits réservés
          </p>
          <p class="text-gray-400 text-sm">
            Créé avec passion pour transformer vos idées en réalité visuelle
          </p>
        </div>
      </div>
    </footer>
  </div>
</template>
