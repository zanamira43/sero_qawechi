<template>
  <div class="container mx-auto w-full">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-2 gap-2">
      <!-- right section text -->
      <div class="w-full flex justify-end items-center">
        <div class="flex flex-col md:justify-end md:items-start items-center space-y-4">
          <h1 class="text-white md:text-3xl text-2xl font-thin">NOW YOU CAN FEEL ENERGY</h1>
          <h1 class="text-white text-6xl font-extrabold md:text-left text-center">
            Start your Day with an Espresso
          </h1>
          <div class="w-[20%]">
            <NuxtLink to="/#contact" class="btn font-semibold hidden lg:flex hover:bg-gray-600 hover:text-white">
              Buy Now
            </NuxtLink>
            </div>
        </div>
      </div>

      <!-- left section text -->
      <div class="md:mt-[200px] lg:mt-[200px] w-full flex justify-center items-center">
        <NuxtImg src="/saro-hero-img.png" alt="" class="md:h-[500px] h-[200px]"/>
      </div>
    </div>
  </div>
</template>

<script setup>

</script>
