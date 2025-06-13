<template>
  <nav class="navbar">
    <div class="nav-container">
      <div class="nav-content">
        <!-- Logo/Nom -->
        <NuxtLink to="/" class="logo">
          Ramel Granes Boulamidas
        </NuxtLink>

        <!-- Navigation desktop -->
        <div class="desktop-nav">
          <NuxtLink to="/" class="nav-link">
            Accueil
          </NuxtLink>
          <NuxtLink to="/projets" class="nav-link">
            Projets
          </NuxtLink>
          <NuxtLink to="/about" class="nav-link">
            À propos
          </NuxtLink>
          <NuxtLink to="/contact" class="nav-link-contact">
            Contact
          </NuxtLink>
        </div>

        <!-- Bouton menu mobile -->
        <button @click="toggleMobile" class="mobile-btn">
          <svg class="hamburger-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
          </svg>
        </button>
      </div>
      <div v-show="mobileOpen" class="md:hidden pb-4 border-t border-gray-700 mt-4 pt-4">
        <div class="flex flex-col space-y-3">
          <NuxtLink to="/" class="text-gray-300 hover:text-white hover:bg-white/10 px-4 py-3 rounded-lg transition-all duration-300 font-medium" @click="closeMobile">
            Accueil
          </NuxtLink>
          <NuxtLink to="/projets" class="text-gray-300 hover:text-white hover:bg-white/10 px-4 py-3 rounded-lg transition-all duration-300 font-medium" @click="closeMobile">
            Projets
          </NuxtLink>
          <NuxtLink to="/about" class="text-gray-300 hover:text-white hover:bg-white/10 px-4 py-3 rounded-lg transition-all duration-300 font-medium" @click="closeMobile">
            À propos
          </NuxtLink>
          <NuxtLink to="/contact" class="bg-gradient-to-r from-purple-600 to-pink-600 text-white px-4 py-3 rounded-lg transition-all duration-300 font-medium text-center" @click="closeMobile">
            Contact
          </NuxtLink>
        </div>
      </div>
    </div>
  </nav>
</template>

<script setup>
const mobileOpen = ref(false)

const toggleMobile = () => {
  mobileOpen.value = !mobileOpen.value
}

const closeMobile = () => {
  mobileOpen.value = false
}
</script>

<style scoped>
/* Navbar principale */
.navbar {
  background: linear-gradient(135deg, #0f172a 0%, #7c3aed 50%, #0f172a 100%);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
  position: sticky;
  top: 0;
  z-index: 50;
  backdrop-filter: blur(10px);
}

.nav-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 1rem;
}

.nav-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 70px;
}

/* Logo */
.logo {
  font-size: 1.1rem;
  font-weight: bold;
  background: linear-gradient(135deg, #a855f7, #ec4899);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
  text-decoration: none;
  transition: all 0.3s ease;
}

.logo:hover {
  background: linear-gradient(135deg, #ec4899, #a855f7);
  -webkit-background-clip: text;
  background-clip: text;
  transform: scale(1.05);
}

/* Navigation desktop */
.desktop-nav {
  display: none;
  gap: 2rem;
  align-items: center;
}

.nav-link {
  color: #d1d5db;
  text-decoration: none;
  font-weight: 500;
  padding: 0.5rem 1rem;
  border-radius: 0.5rem;
  transition: all 0.3s ease;
  position: relative;
}

.nav-link:hover {
  color: white;
  background-color: rgba(255, 255, 255, 0.1);
  transform: translateY(-2px);
}

.nav-link-contact {
  background: linear-gradient(135deg, #7c3aed, #ec4899);
  color: white;
  text-decoration: none;
  font-weight: 600;
  padding: 0.75rem 1.5rem;
  border-radius: 2rem;
  transition: all 0.3s ease;
  box-shadow: 0 4px 15px rgba(124, 58, 237, 0.3);
}

.nav-link-contact:hover {
  background: linear-gradient(135deg, #6d28d9, #db2777);
  transform: translateY(-2px);
  box-shadow: 0 8px 25px rgba(124, 58, 237, 0.4);
}

/* Bouton mobile */
.mobile-btn {
  display: block;
  background: none;
  border: none;
  color: #d1d5db;
  cursor: pointer;
  padding: 0.5rem;
  border-radius: 0.5rem;
  transition: all 0.3s ease;
}

.mobile-btn:hover {
  color: white;
  background-color: rgba(255, 255, 255, 0.1);
}

.hamburger-icon {
  width: 1.5rem;
  height: 1.5rem;
}

/* Media queries pour responsivité */
@media (min-width: 768px) {
  .desktop-nav {
    display: flex !important;
  }

  .mobile-btn {
    display: none;
  }

  .logo {
    font-size: 1.25rem;
  }
}

@media (min-width: 1024px) {
  .logo {
    font-size: 1.5rem;
  }

  .desktop-nav {
    gap: 2.5rem;
  }
}
</style>
