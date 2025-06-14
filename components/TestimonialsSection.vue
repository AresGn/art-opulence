<template>
  <section class="testimonials-section py-20">
    <div class="container mx-auto px-4">
      <div class="text-center mb-16 fade-in">
        <h2 class="text-4xl md:text-5xl font-bold mb-4 text-white">
          Témoignages
        </h2>
        <p class="text-xl text-white/90 max-w-2xl mx-auto">
          Découvrez ce que mes clients pensent de mon travail et de notre collaboration.
        </p>
      </div>

      <div class="testimonials-swiper max-w-6xl mx-auto" ref="swiperContainer">
        <div class="swiper-wrapper">
          <div
            v-for="testimonial in testimonials"
            :key="testimonial.id"
            class="swiper-slide"
          >
            <div class="testimonial-card rounded-2xl p-4 md:p-6 mx-1 md:mx-2 text-center h-auto">
              <!-- Avatar -->
              <div class="mb-4 md:mb-6 flex justify-center">
                <img
                  v-if="testimonial.avatar"
                  :src="testimonial.avatar"
                  :alt="testimonial.name"
                  class="testimonial-avatar"
                />
                <div
                  v-else
                  class="testimonial-avatar bg-gradient-to-br from-purple-500 to-pink-500 flex items-center justify-center text-white text-xl md:text-2xl font-bold"
                >
                  {{ getInitials(testimonial.name) }}
                </div>
              </div>

              <!-- Étoiles -->
              <div class="flex justify-center mb-4">
                <div class="flex space-x-1">
                  <svg
                    v-for="star in 5"
                    :key="star"
                    class="w-4 h-4 md:w-5 md:h-5 text-yellow-400 fill-current"
                    viewBox="0 0 20 20"
                  >
                    <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"/>
                  </svg>
                </div>
              </div>

              <!-- Commentaire -->
              <blockquote class="text-gray-700 text-sm md:text-lg mb-4 md:mb-6 italic leading-relaxed line-clamp-4">
                "{{ testimonial.comment }}"
              </blockquote>

              <!-- Nom et entreprise -->
              <div>
                <h4 class="font-bold text-gray-900 text-base md:text-lg">{{ testimonial.name }}</h4>
                <p class="text-gray-600 text-sm md:text-base">{{ testimonial.company }}</p>
                <p class="text-gray-500 text-xs md:text-sm">{{ testimonial.position }}</p>
              </div>
            </div>
          </div>
        </div>

        <!-- Pagination -->
        <div class="testimonials-swiper-pagination mt-8 md:mt-12"></div>
      </div>
    </div>
  </section>
</template>

<script setup>
import Swiper from 'swiper'
import { Pagination, Autoplay } from 'swiper/modules'
import 'swiper/css'
import 'swiper/css/pagination'
import 'swiper/css/autoplay'

const swiperContainer = ref(null)

// Données des témoignages
const testimonials = [
  {
    id: 1,
    name: "Sophie Martin",
    company: "Boutique Élégance",
    position: "Propriétaire",
    comment: "Art Opulence a créé une identité visuelle parfaite pour ma boutique. Le logo reflète exactement l'image que je voulais transmettre.",
    avatar: "https://images.unsplash.com/photo-1494790108755-2616b612b786?w=150&h=150&fit=crop&crop=face"
  },
  {
    id: 2,
    name: "Thomas Dubois",
    company: "TechStart",
    position: "CEO",
    comment: "Collaboration fantastique ! L'équipe a su comprendre nos besoins et livrer des créations qui dépassent nos attentes.",
    avatar: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face"
  },
  {
    id: 3,
    name: "Marie Leroy",
    company: "Restaurant Le Gourmet",
    position: "Gérante",
    comment: "Des affiches et menus magnifiques qui ont donné une nouvelle image à notre restaurant. Les clients adorent notre design !",
    avatar: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=150&h=150&fit=crop&crop=face"
  },
  {
    id: 4,
    name: "Pierre Moreau",
    company: "Agence Immobilière Plus",
    position: "Directeur Commercial",
    comment: "Art Opulence a transformé notre communication visuelle. Les bannières et cartes de visite sont d'une qualité remarquable.",
    avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face"
  },
  {
    id: 5,
    name: "Camille Rousseau",
    company: "Événements Prestige",
    position: "Organisatrice d'événements",
    comment: "Un service client exceptionnel et des créations à la hauteur de nos événements haut de gamme. Très professionnel !",
    avatar: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150&h=150&fit=crop&crop=face"
  },
  {
    id: 6,
    name: "Alexandre Petit",
    company: "Studio Créatif",
    position: "Directeur Artistique",
    comment: "Une approche créative remarquable et une attention aux détails exceptionnelle. Comprend vraiment le design moderne.",
    avatar: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150&h=150&fit=crop&crop=face"
  }
]

// Fonction pour obtenir les initiales
const getInitials = (name) => {
  return name.split(' ').map(word => word.charAt(0)).join('').toUpperCase()
}

onMounted(() => {
  if (swiperContainer.value) {
    const swiper = new Swiper(swiperContainer.value, {
      modules: [Pagination, Autoplay],
      slidesPerView: 1,
      spaceBetween: 16,
      centeredSlides: false,
      loop: true,
      autoplay: {
        delay: 2800,
        disableOnInteraction: false,
        pauseOnMouseEnter: true,
      },
      pagination: {
        el: swiperContainer.value.querySelector('.testimonials-swiper-pagination'),
        clickable: true,
        dynamicBullets: true,
      },
      breakpoints: {
        320: {
          slidesPerView: 1,
          spaceBetween: 12,
          centeredSlides: false,
        },
        640: {
          slidesPerView: 1,
          spaceBetween: 16,
          centeredSlides: false,
        },
        768: {
          slidesPerView: 2,
          spaceBetween: 16,
          centeredSlides: false,
        },
        1024: {
          slidesPerView: 3,
          spaceBetween: 20,
          centeredSlides: false,
        },
        1280: {
          slidesPerView: 3,
          spaceBetween: 24,
          centeredSlides: false,
        },
      },
      effect: 'slide',
      speed: 800,
      grabCursor: true,
      watchOverflow: true,
    })

    console.log('Swiper des témoignages initialisé avec autoplay:', swiper.autoplay)

    // Masquer TOUS les éléments Swiper qui ne sont pas dans la section témoignages
    nextTick(() => {
      // Masquer tous les éléments Swiper globaux (sauf pagination des témoignages)
      const allSwiperElements = document.querySelectorAll('.swiper-pagination, .swiper-button-next, .swiper-button-prev')
      allSwiperElements.forEach(el => {
        if (!el.closest('.testimonials-section') || el.classList.contains('swiper-button-next') || el.classList.contains('swiper-button-prev')) {
          el.style.display = 'none !important'
          el.style.visibility = 'hidden !important'
          el.style.opacity = '0 !important'
          el.style.pointerEvents = 'none !important'
          el.style.position = 'absolute !important'
          el.style.left = '-9999px !important'
          el.style.top = '-9999px !important'
          el.style.zIndex = '-1 !important'
        }
      })

      // Forcer la suppression dans la section Hero spécifiquement
      const heroSection = document.querySelector('.hero-section')
      if (heroSection) {
        const heroSwiperElements = heroSection.querySelectorAll('*[class*="swiper-"], .swiper-pagination, .swiper-button-next, .swiper-button-prev')
        heroSwiperElements.forEach(el => {
          el.style.display = 'none !important'
          el.style.visibility = 'hidden !important'
          el.style.opacity = '0 !important'
          el.style.pointerEvents = 'none !important'
          el.style.position = 'absolute !important'
          el.style.left = '-9999px !important'
          el.style.top = '-9999px !important'
          el.style.zIndex = '-1 !important'
        })
      }
    })
  }
})
</script>
