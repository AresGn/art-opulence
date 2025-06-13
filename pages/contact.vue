<template>
  <div class="container mx-auto px-4 py-16">
    <div class="max-w-2xl mx-auto">
      <h1 class="text-4xl font-bold mb-8 text-center">Contact</h1>
      <div class="bg-white rounded-lg shadow-lg p-8">
        <ContactForm />
      </div>
      <div class="mt-12 text-center">
        <h2 class="text-2xl font-semibold mb-6">Autres moyens de me contacter</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div class="bg-gray-50 rounded-lg p-6">
            <div class="text-2xl mb-3">📧</div>
            <h3 class="font-semibold mb-2">Email</h3>
            <p class="text-gray-600">contact@portfolio.com</p>
          </div>
          <div class="bg-gray-50 rounded-lg p-6">
            <div class="text-2xl mb-3">📱</div>
            <h3 class="font-semibold mb-2">Telephone</h3>
            <p class="text-gray-600">+33 1 23 45 67 89</p>
          </div>
          <div class="bg-gray-50 rounded-lg p-6">
            <div class="text-2xl mb-3">🌐</div>
            <h3 class="font-semibold mb-2">Reseaux</h3>
            <div class="space-y-1">
              <p class="text-gray-600">LinkedIn</p>
              <p class="text-gray-600">Instagram</p>
              <p class="text-gray-600">Behance</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
useSeoMeta({
  title: 'Contact - Portfolio Designer Graphique',
  description: 'Contactez-moi pour vos projets de design graphique et montage video.'
})
</script>
