<template>
  <ClientOnly>
    <div id="location" class="pt-[100px] md:pt-10 w-full bg-white">
      <div class="container mx-auto bg-white">
        <div class="flex flex-col justify-center items-center space-y-3">
          <h1 class="font-semibold text-3xl md:text-6xl text-[#29130D]">Location</h1>
          <h3 class="font-medium text-xl  md:text-3xl text-[#29130D]/70">you can look our location</h3>
        </div>
      </div>

      <!-- google location -->
      <div class="w-full h-full mt-5 px-1 md:px-0 rounded-md md:rounded-none bg-white">
        <GoogleMap
          class="rounded-md md:rounded-none"
            api-key="AIzaSyCVfbDFSEJv6VekGudZdN9h2LbC7z6Ymsk" 
            style="width: 100%; height: 600px" 
            :center="center" 
            :zoom="13.5">
            <Marker :options="{ position: center }" />
        </GoogleMap>
      </div>
    </div>
  </ClientOnly>

</template>

<script setup>
import { GoogleMap, Marker } from "vue3-google-map";

// const center = ref({ lat: 50.3976646, lng: -4.047572 });
const center = ref({ lat: 35.55678179128119, lng:  45.448872995693});
</script>