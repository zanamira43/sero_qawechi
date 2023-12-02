<template>
  <ClientOnly>
    <div class="fixed top-0 left-0 z-50 overflow-auto bg-black/90 w-full h-screen">
      <div class="container mx-auto flex justify-center items-center">
        <div class="mt-2">
          <div class="w-full black rounded-lg">
            <div class="flex justify-end p-2 w-full">
              <button @click="$emit('close')">
                <Icon name="ri:close-circle-line" size="30" class="text-white" />
              </button>
            </div>

            <div class="flex justify-center items-center w-full h-auto">
              <NuxtImg
              :src="image" 
              class="h-[600px] md:w-full w-[400px] rounded-lg object-contain"
              />
            </div>
          </div>
        </div>
      </div>
    </div>
  </ClientOnly>
</template>

<script setup>

defineProps(['image'])

</script>