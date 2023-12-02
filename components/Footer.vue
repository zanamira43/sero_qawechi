<template>
  <footer id="contact" class="footer p-10 bg-[#29130D] text-white">
  <nav class="h-full w-full">
    <div class="flex flex-row gap-1 justify-start">
      <NuxtImg  src="/saro-logo.jpg" alt="logo" class="rounded-full w-[100px] h-[100px] -ml-4"/>
      <NuxtLink to="/" class="btn btn-ghost normal-case text-xl mt-8 -ml-1">S. Qawechi</NuxtLink>
    </div>
    <div class="mt-2">
      <p class="text-white text-md font-normal">
        Copyright <Icon name="ri:copyright-line" size="20" class="text-yellow-500" /> 
        {{ date }}
        | All Right Reserved
      </p>
      <!-- <p class="text-white text-md font-normal">
        Made width <Icon name="ri:heart-2-fill" size="20" class="text-yellow-500" /> 
        | <a href="https://www.zanamira.online" target="_blank">By Zana Mira</a> 
      </p> -->
    </div>
  </nav> 
  <hr class="bg-white w-[80%] md:hidden">
  <nav>
    <header class="footer-title">Contact Us</header>
    <div class="flex flex-row gap-2 justify-start mt-2">
      <Icon name="uil:location-point" size="20" class="mt-2 text-gray-400"/>
      <h1 class="font-medium text-[16px]">
        Orzdi Street <br />
        Sulaymaniyah, 46001
      </h1>
    </div>
    <div class="flex flex-row gap-2 justify-start mt-2">
      <Icon name="ri:phone-fill" size="20"  class=" text-gray-400"/>
      <h1 class="font-medium text-[16px]">0770 125 9010</h1>
    </div>
    <div class="flex flex-row gap-2 justify-start mt-2">
      <Icon name="mdi:email" size="20"  class="text-gray-400"/>
      <h1 class="font-medium text-[16px]">sarwarmahmood1990@gmail.com</h1>
    </div>
  </nav> 
  <hr class="text-white w-[80%] md:hidden">
  <nav>
    <header class="footer-title">Social</header> 
    <div class="grid grid-flow-col -ml-2">
      <NuxtLink 
        v-for="icon in icons"
        :key="icon.id"
        target="_blank"
        :to="icon.url" 
        class="w-8 h-8 rounded-md flex items-center justify-center text-white">
        <Icon :name="`ri:${icon.title}`" size="25"
         :class="icon.active ? 'text-gray-300' : 'text-gray-700'"/>
      </NuxtLink>
    </div>
  </nav>
</footer>
</template>

<script setup>
const date = ref(new Date().getFullYear())


// social media icon list
const icons = ref([
  {
    id: 1,
    title: "facebook-fill",
    url: '/',
    active: false

  },
  {
    id: 2,
    title: "twitter-fill",
    url: '/',
    active: false
  },
  {
    id: 3,
    title: "instagram-fill",
    url: 'https://www.instagram.com/saro qawechi',
    active: true
  },
  {
    id: 4,
    title: "snapchat-fill",
    url: '/',
    active: false
  },

])
</script>
