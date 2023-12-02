<template>
  <div id="Home" class="w-full bg-white relative">
    <!-- background image -->
    <div  class="w-full h-full max-w-full overflow-auto">
      <NuxtImg src="/sq-header.jpg" class="object-cover h-[600px] w-full" />
    </div>
    <div  
      :class="changeScroll ? 'fixed top-0 left-0 z-50 w-full h-[85px] bg-[#29130D]': ''"
      />
    <!-- header content -->
    <div class="absolute top-0 left-0 w-full h-full bg-black/20">
      <!-- Header container -->
      <div class="container mx-auto flex justify-center items-center">
    
        <!-- navbar -->
        <Navbar class="fixed top-0 z-50" />

        <!-- Hero section -->
        <HeroSection class="mt-[150px] lg:mt-0"/>


      </div>
      <!-- Header container --> 
    </div>
  </div>
</template>

<script setup>

// scroll body 
const changeScroll = ref(false)

onMounted(() => {
  document.addEventListener('scroll', function(){
    let bodyTopPosition = document.body.getBoundingClientRect().top;
    if(bodyTopPosition < -75){
      changeScroll.value = true
    } else {
      changeScroll.value = false
    }
  })
})

</script>