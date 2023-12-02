<template>
  <div id="services" class="w-full h-auto bg-[#29130D] text-white md:mt-[200px] mt-10">
    <div class="container mx-auto py-20">
      <!-- title section -->
      <div class="flex flex-col justify-center items-center">
        <h1 class="text-xl md:text-4xl font-semibold text-center text-white">
          What kind of Coffee we serve for you
        </h1>
        <h4 class="text-lg text-center md:text-2xl font-light mt-3 text-white">
          we are here to listen from you deliver your exellence
        </h4>
      </div>

      <!-- coffee menu list as a services section -->
      <div class="md:mt-20 mt-10 mb-10 px-4 md:px-0">
        <div class="grid grid-col-1 md:grid-cols-3 md:gap-5 gap-2">
          <!-- card -->
          <div v-for="service in services" :key="service.id" 
            class="card w-full bg-white shadow-xl text-[#29130D] gap-10">
              <div class="card-body">
                <div class="card-actions justify-between align-middle">
                  <h2 class="card-title">{{ service.title }}</h2>
                  <h3 class="card-title font-mono font-medium"> 
                    {{ service.price }}
                    <span class="mt-2 text-[12px] text-[#29130D]">IQD</span>
                  </h3>
                </div>
              </div>
          </div>
            <!-- /card -->
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>

const services = ref([
  {id: 1, title: 'Espresso', price: 1500},
  {id: 2, title: 'Americano', price: 2000},
  {id: 3, title: 'Cappuccino', price: 2500},
  {id: 4, title: 'Cafe latte', price: 2500},
  {id: 5, title: 'Mocha', price: 2500},
  {id: 6, title: 'Hot Chocolate', price: 2000},
  {id: 7, title: 'Hot Qawechi', price: 2000},
  {id: 8, title: 'Hot Milk', price: 1500},
  {id: 9, title: 'Kurdish Coffee', price: 1500},
  {id: 10, title: 'Turkish Coffee', price: 1500},
  {id: 11, title: 'Arabian Coffee', price: 1500},
  {id: 12, title: 'Ice Latte', price: 2500},
  {id: 13, title: 'Ice Americano', price: 2500},
  {id: 14, title: 'Ice Chocolate', price: 2500},
  {id: 15, title: 'Ice Mocha', price: 3000},
  {id: 16, title: 'Ice Caramel Latte', price: 3000},
  {id: 17, title: 'Ice Vanilla Latte', price: 3000},
  {id: 18, title: 'Caramel Machiatto', price: 3000},
  {id: 19, title: 'Smoothie', price: 3500},
  {id: 20, title: 'Milk Shake', price: 3500},
  {id: 20, title: 'Mojito', price: 3000},
])

</script>