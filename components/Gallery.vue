<template>
  <div id="gallery" class="w-full h-full py-10 md:mt-[100px] bg-white">
    <div class="container mx-auto">
      <!-- gallery Title -->
      <div class="flex flex-col justify-center items-center space-y-3 bg-white">
        <h1 class="font-semibold text-3xl md:text-6xl text-[#29130D]">Gallery</h1>
        <h3 class="font-medium text-xl  md:text-3xl text-[#29130D]/70">
          Watch our coffee shop from this gallery
        </h3>
      </div>

      <!-- imgae grid -->
      <div class="mt-8 w-full h-[500]">
        <div class="grid grid-cols-1 md:grid-cols-5 gap-4 border">
          <!-- section one -->
          <div class="md:col-span-2 md:px-0 px-1 h-full">
            <NuxtImg 
              @click="OpenImage('/gallery/gallery_one.jpeg')" 
              src="/gallery/gallery_one.jpeg" 
              class="md:h-[612px] h-[400px] w-full rounded-lg object-cover cursor-pointer"
            />
          </div>

          <!-- section two -->
          <div class="md:col-span-3 md:px-0 px-1 bg-white">
            <div class="flex flex-col space-y-3">
              <div class="flex flex-col md:flex-row md:gap-2 gap-y-2 md:h-1/2">
                <NuxtImg   
                  @click="OpenImage('/gallery/gallery_two.jpeg')" 
                  src="/gallery/gallery_two.jpeg" class="md:h-[300px] h-[400px] w-full md:w-1/2 rounded-lg border border-[#29130D] object-cover"
                  />

                <NuxtImg 
                  @click="OpenImage('/gallery/gallery_three.jpeg')" 
                  src="/gallery/gallery_three.jpeg" 
                  class="md:h-[300px] h-[400px] w-full md:w-1/2 rounded-lg border border-[#29130D] object-cover"/>
              </div>

              <div class="flex flex-col md:flex-row md:gap-2 gap-y-2 md:h-1/2">
                <NuxtImg  
                  @click="OpenImage('/gallery/gallery_four.jpeg')" 
                  src="/gallery/gallery_four.jpeg" 
                  class="md:h-[300px] h-[400px] w-full md:w-1/2 rounded-lg border border-[#29130D] object-cover"/>

                <NuxtImg 
                  @click="OpenImage('/gallery/gallery_five.jpeg')"  
                  src="/gallery/gallery_five.jpeg" 
                  class="md:h-[300px] h-[400px] w-full md:w-1/2 rounded-lg border border-[#29130D] object-cover"/>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>

    <!-- Image Modal -->
    <ImageModal v-if="modal" @close="modal = false" :image="image" />
  </div>
</template>

<script setup>

const modal = ref(false)
const image = ref('')

const OpenImage = (img) => {
  modal.value = true
  image.value = img
}

</script>