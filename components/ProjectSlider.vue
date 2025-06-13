<template>
  <div class="swiper-container" ref="swiperContainer">
    <div class="swiper-wrapper">
      <div v-for="image in images" :key="image" class="swiper-slide">
        <img :src="image" :alt="alt" class="w-full h-auto rounded-lg" />
      </div>
    </div>
    <div class="swiper-pagination"></div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>
</template>

<script setup>
import { Swiper, Navigation, Pagination } from 'swiper'
import 'swiper/css'
import 'swiper/css/navigation'
import 'swiper/css/pagination'

const props = defineProps({
  images: {
    type: Array,
    required: true
  },
  alt: {
    type: String,
    default: 'Project image'
  }
})

const swiperContainer = ref(null)

onMounted(() => {
  if (swiperContainer.value) {
    new Swiper(swiperContainer.value, {
      modules: [Navigation, Pagination],
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      loop: true,
      autoplay: {
        delay: 5000,
      },
    })
  }
})
</script>
