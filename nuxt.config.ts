import { defineNuxtConfig } from 'nuxt/config'

// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-05-15',
  devtools: { enabled: true },
  modules: [
    '@nuxtjs/tailwindcss',
    '@vueuse/nuxt',
    '@vueuse/motion/nuxt'
  ],
  css: ['~/assets/css/main.css'],
  app: {
    head: {
      title: 'Art Opulence - Designer Graphique',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        { name: 'description', content: 'Portfolio de Art Opulence - Designer graphique spécialisé en création d\'identités visuelles et montage vidéo professionnel' },
        { name: 'keywords', content: 'design graphique, montage vidéo, identité visuelle, logo, flyer, affiche, bannière, motion design' },
        { name: 'author', content: 'Art Opulence' }
      ]
    }
  }
})

