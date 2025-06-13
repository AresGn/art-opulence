<template>
  <form @submit.prevent="submitForm" class="space-y-6">
    <div>
      <label for="name" class="block text-sm font-medium text-gray-700 mb-2">Nom</label>
      <input 
        v-model="form.name"
        type="text" 
        id="name" 
        required
        class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
      >
    </div>
    <div>
      <label for="email" class="block text-sm font-medium text-gray-700 mb-2">Email</label>
      <input 
        v-model="form.email"
        type="email" 
        id="email" 
        required
        class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
      >
    </div>
    <div>
      <label for="projectType" class="block text-sm font-medium text-gray-700 mb-2">Type de projet</label>
      <select 
        v-model="form.projectType"
        id="projectType"
        class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
      >
        <option value="">Selectionnez un type</option>
        <option value="logo">Logo</option>
        <option value="flyer">Flyer</option>
        <option value="affiche">Affiche</option>
        <option value="video">Video</option>
        <option value="banniere">Banniere</option>
        <option value="autre">Autre</option>
      </select>
    </div>
    <div>
      <label for="message" class="block text-sm font-medium text-gray-700 mb-2">Message</label>
      <textarea 
        v-model="form.message"
        id="message" 
        rows="5"
        required
        class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
      ></textarea>
    </div>
    <button 
      type="submit"
      :disabled="isSubmitting"
      class="w-full bg-blue-600 text-white py-3 px-6 rounded-lg hover:bg-blue-700 disabled:opacity-50 transition-colors"
    >
      {{ isSubmitting ? 'Envoi en cours...' : 'Envoyer le message' }}
    </button>
    <div v-if="message" :class="messageClass" class="p-4 rounded-lg">
      {{ message }}
    </div>
  </form>
</template>

<script setup>
const form = reactive({
  name: '',
  email: '',
  projectType: '',
  message: ''
})

const isSubmitting = ref(false)
const message = ref('')
const messageClass = ref('')

const submitForm = async () => {
  isSubmitting.value = true
  message.value = ''
  
  try {
    // Ici vous pouvez intégrer EmailJS ou Formspree
    console.log('Form submitted:', form)
    
    // Simulation d'envoi
    await new Promise(resolve => setTimeout(resolve, 1000))
    
    message.value = 'Message envoye avec succes ! Je vous repondrai dans les plus brefs delais.'
    messageClass.value = 'bg-green-100 text-green-800'
    
    // Reset form
    Object.keys(form).forEach(key => {
      form[key] = ''
    })
  } catch (error) {
    message.value = 'Erreur lors de l\'envoi du message. Veuillez reessayer.'
    messageClass.value = 'bg-red-100 text-red-800'
  } finally {
    isSubmitting.value = false
  }
}
</script>
