<template>
  <!-- sidebar navigation -->
  <div class="w-full lg:hidden">
    <button @click="mobileMenu = true" class="btn bg-transparent text-white hover:bg-gray-600 lg:hidden">
    <Icon name="ic:twotone-menu" size="25" />
    </button>
  </div>

     <!-- side bar -->
  <div class="fixed z-50 top-0 left-0 overflow-auto bg-[#29130D] h-screen flex flex-col justify-start  items-start p-2"
    :class="mobileMenu ? 'w-[300px] transition-all duration-500 ease-in visible' : 'w-0 transition-all duration-500 ease-out invisible' ">
    <div class="flex justify-end items-end w-full">
      <button 
      class="p-2 rounded-full border bg-black text-white hover:bg-white hover:text-black" @click="mobileMenu = false"
      >
        <Icon  name="material-symbols:close-rounded" size="25"/>
      </button>
    </div>

    <div class="flex justify-center items-center w-full lg:hidden mt-10">
      <ul class="menu menu-vertical px-1">
        <li v-for="menu in menus" :key="menu.id"
          class="cursor-pointer"
          @click="closeSidebar(menu.title)"
          :class="activeLink == menu.title ? 'bg-white text-[#29130D] rounded-lg' : ''">
          <NuxtLink 
            :to="menu.link"
            class="font-medium text-lg hover:bg-gray-800 hover:text-white">
            {{ menu.title }}
          </NuxtLink>
        </li>
      </ul>
    </div>
     
  </div>
</template>

<script setup>
const activeLink = useState(() => 'Home')
// mobile menu
const mobileMenu = ref(false)
 
defineProps(['menus'])

const closeSidebar = (title) => {
  if(title){
    activeLink.value = title
    mobileMenu.value = false
  }
}

</script>
