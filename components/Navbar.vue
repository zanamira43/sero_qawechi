<template>
  <div class="navbar text-gray-100 container">

    <!-- side bar -->
    <Sidebar :menus="menus" />


    <!-- navbar title & logo -->
    <div class="navbar-start">
      <NuxtImg src="/saro-logo.jpg"  class="rounded-full w-[70px] h-[70px]"/>
      <NuxtLink to="/" class="btn btn-ghost normal-case text-xl -ml-1">S. Qawechi</NuxtLink>
    </div>
    <!-- navbar center for menu -->
    <div class="navbar-center hidden lg:flex">
      <ul class="menu menu-horizontal px-1">
        <li v-for="menu in menus" :key="menu.id"
          class="cursor-pointer"
          @click="activeLink = menu.title"
          :class="activeLink === menu.title ? 'bg-white text-[#29130D] rounded-lg' : ''">
          <NuxtLink :to="menu.link" class="hover:bg-[#29130D] hover:text-white font-medium text-lg">
            {{ menu.title }}
          </NuxtLink>
        </li>
      </ul>
    </div>
    <!-- navbar end BUY button -->
    <div class="navbar-end">
      <NuxtLink to="/#contact" class="btn font-semibold hidden lg:flex hover:bg-gray-600 hover:text-white">
        Buy Now
      </NuxtLink>
    </div>
  </div>
</template>

<script setup>

const activeLink = useState(() => 'Home')

const menus = ref([
  {
    id: 1,
    title: "Home",
    link: "/"

  },
  {
    id: 2,
    title: "Coffee",
    link: "/#coffee"

  },
  {
    id: 3,
    title: "Services",
    link: "/#services"

  },
  {
    id: 4,
    title: "About",
    link: "/#about"

  },
  {
    id: 5,
    title: "Location",
    link: "/#location"

  },
  {
    id: 6,
    title: "Gallery",
    link: "/#gallery"

  },
  {
    id: 7,
    title: "Contact",
    link: "/#contact"

  },
])


</script>
