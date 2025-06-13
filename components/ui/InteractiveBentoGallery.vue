<script setup lang="ts">
import { ref, computed } from 'vue'
import { X } from 'lucide-vue-next'

interface MediaItemType {
  id: number
  type: string
  title: string
  desc: string
  url: string
  span: string
}

const props = defineProps<{
  mediaItems: MediaItemType[]
}>()

const selectedItem = ref<MediaItemType | null>(null)
const items = computed(() => props.mediaItems)
const isDragging = ref(false)
</script>

<template>
  <div class="container mx-auto px-4 py-8 max-w-4xl">
    <div class="mb-8 text-center">
      <!-- Suppression des titres inutiles -->
    </div>
    <div class="grid grid-cols-2 grid-rows-2 gap-4">
      <div
        v-for="item in items.slice(0, 4)"
        :key="item.id"
        class="relative overflow-hidden rounded-xl cursor-pointer"
        @click="selectedItem = item"
      >
        <img v-if="item.type === 'image'" :src="item.url" :alt="item.title" class="absolute inset-0 w-full h-full object-cover" />
        <video v-else :src="item.url" class="absolute inset-0 w-full h-full object-cover" autoplay loop muted playsinline />
        <div class="absolute inset-0 flex flex-col justify-end p-2 sm:p-3 md:p-4">
          <div class="absolute inset-0 bg-gradient-to-t from-black/80 via-black/40 to-transparent" />
          <h3 class="relative text-white text-xs sm:text-sm md:text-base font-medium line-clamp-1">{{ item.title }}</h3>
          <p class="relative text-white/70 text-[10px] sm:text-xs md:text-sm mt-0.5 line-clamp-2">{{ item.desc }}</p>
        </div>
      </div>
    </div>
    <template v-if="selectedItem">
      <div class="fixed inset-0 w-full min-h-screen sm:h-[90vh] md:h-[600px] backdrop-blur-lg rounded-none sm:rounded-lg md:rounded-xl overflow-hidden z-10 flex items-center justify-center">
        <div class="relative w-full aspect-[16/9] max-w-[95%] sm:max-w-[85%] md:max-w-3xl h-auto max-h-[70vh] rounded-lg overflow-hidden shadow-md bg-gray-900/20 flex items-center justify-center">
          <img v-if="selectedItem.type === 'image'" :src="selectedItem.url" :alt="selectedItem.title" class="w-full h-full object-contain" />
          <video v-else :src="selectedItem.url" class="w-full h-full object-contain" autoplay loop muted playsinline />
          <div class="absolute bottom-0 left-0 right-0 p-2 sm:p-3 md:p-4 bg-gradient-to-t from-black/50 to-transparent">
            <h3 class="text-white text-base sm:text-lg md:text-xl font-semibold">{{ selectedItem.title }}</h3>
            <p class="text-white/80 text-xs sm:text-sm mt-1">{{ selectedItem.desc }}</p>
          </div>
          <button class="absolute top-2 right-2 p-2 rounded-full bg-gray-200/80 text-gray-700 hover:bg-gray-300/80 text-xs sm:text-sm backdrop-blur-sm" @click="selectedItem = null">
            <X class="w-4 h-4" />
          </button>
        </div>
      </div>
    </template>
  </div>
</template>

<style scoped>
</style>
