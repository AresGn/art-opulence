<template>
  <div>
    <Navigation />
    <main>
      <slot />
    </main>
    <footer class="bg-gradient-to-r from-purple-900 to-pink-900 text-white pt-16 pb-8 px-4 mt-24">
      <div class="container max-w-7xl mx-auto">
        <!-- Logo et Présentation centrés -->
        <div class="text-center mb-16">
          <img src="/logo.JPG" alt="Art Opulence Logo" class="h-24 w-auto mx-auto bg-white shadow-lg object-contain mb-6" />
          <h3 class="text-3xl font-bold bg-gradient-to-r from-purple-400 to-pink-400 bg-clip-text text-transparent mb-3">Art Opulence</h3>
          <p class="text-xl text-gray-300 mb-4">Design & Création Visuelle</p>
          <p class="text-gray-300 max-w-2xl mx-auto leading-relaxed">
            Designer graphique spécialisé dans la création d'identités visuelles impactantes et le montage vidéo professionnel.
          </p>
        </div>

        <!-- Footer en 3 colonnes exactes - FORCE DESKTOP -->
        <div class="footer-grid">
          <!-- Colonne 1: Navigation -->
          <div class="footer-column">
            <h4 class="footer-title">Navigation</h4>
            <ul class="footer-list">
              <li><NuxtLink to="/" class="footer-link">Accueil</NuxtLink></li>
              <li><NuxtLink to="/projets" class="footer-link">Projets</NuxtLink></li>
              <li><NuxtLink to="/about" class="footer-link">À propos</NuxtLink></li>
              <li><NuxtLink to="/contact" class="footer-link">Contact</NuxtLink></li>
            </ul>
          </div>

          <!-- Colonne 2: Services & Expertise -->
          <div class="footer-column">
            <h4 class="footer-title">Expertise</h4>
            <ul class="footer-list">
              <li class="footer-item">Design Graphique</li>
              <li class="footer-item">Identité Visuelle</li>
              <li class="footer-item">Montage Vidéo</li>
              <li class="footer-item">Création GIMP & AVS Studio</li>
            </ul>
          </div>

          <!-- Colonne 3: Contact & Réseaux -->
          <div class="footer-column">
            <h4 class="footer-title">Me Contacter</h4>
            <div class="footer-contact">
              <div class="contact-item">
                <p class="contact-label">Email</p>
                <p class="contact-value">contact@artopulence.com</p>
              </div>
              <div class="contact-item">
                <p class="contact-label">Téléphone</p>
                <p class="contact-value">+33 1 23 45 67 89</p>
              </div>
              <div class="social-links">
                <a href="#" class="social-link">
                  <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2 8c0 .557-.447 1.008-1 1.008s-1-.45-1-1.008c0-.557.447-1.008 1-1.008s1 .452 1 1.008zm0 2h-2v6h2v-6zm3 0h-2v6h2v-2.861c0-1.722 2.002-1.881 2.002 0v2.861h1.998v-3.359c0-3.284-3.128-3.164-4-1.548v-1.093z"/>
                  </svg>
                </a>
                <a href="#" class="social-link">
                  <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
                  </svg>
                </a>
                <a href="#" class="social-link">
                  <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </div>

        <!-- Copyright -->
        <div class="border-t border-gray-700/50 pt-8 text-center">
          <p class="text-gray-400">
            &copy; 2024 <span class="font-medium text-white">Art Opulence</span> - Tous droits réservés
          </p>
        </div>
      </div>
    </footer>
  </div>
</template>

<style scoped>
/* Footer CSS personnalisé pour forcer les 3 colonnes */
.footer-grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 3rem;
  margin-bottom: 4rem;
}

.footer-column {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

.footer-title {
  font-size: 1.25rem;
  font-weight: 600;
  margin-bottom: 1.5rem;
  color: white;
  text-align: center;
}

.footer-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: 1rem;
  align-items: center;
}

.footer-link {
  color: #d1d5db;
  text-decoration: none;
  transition: all 0.3s ease;
  display: inline-block;
}

.footer-link:hover {
  color: white;
  transform: translateX(4px);
}

.footer-item {
  color: #d1d5db;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  text-align: center;
}

.footer-contact {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  align-items: center;
}

.contact-item {
  color: #d1d5db;
  text-align: center;
}

.contact-label {
  margin-bottom: 0.5rem;
  font-weight: 500;
  text-align: center;
}

.contact-value {
  font-size: 0.875rem;
  color: #c084fc;
  text-align: center;
}

.social-links {
  display: flex;
  gap: 1rem;
  margin-top: 1.5rem;
}

.social-link {
  color: #d1d5db;
  transition: all 0.3s ease;
}

.social-link:hover {
  color: white;
  transform: scale(1.1);
}

/* Responsive pour mobile */
@media (max-width: 1023px) {
  .footer-grid {
    grid-template-columns: 1fr;
    gap: 2rem;
    text-align: center;
  }

  .footer-column {
    align-items: center;
  }

  .footer-list {
    align-items: center;
  }

  .footer-item {
    justify-content: center;
  }
}
</style>
