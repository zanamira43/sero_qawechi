// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
   ssr: false,
  
  devtools: { enabled: false },
  css: ['~/assets/css/main.css'],
  
  modules: [
    "@nuxtjs/tailwindcss",
    "nuxt-icon",
    "@nuxt/image",
    "@nuxt/devtools",
    "@nuxtseo/module"
  ],

  runtimeConfig: {
    public: {
      // siteUrl: process.env.NUXT_PUBLIC_SITE_URL,
      siteName: "Sero Qawechi",
      siteDescription: "Welcome to my awesome Sero Qawechi official website!",
      language: "en",
    }
  },

  image: {
    provider: 'netlify',
    netlify: {
      baseURl: process.env.IMAGE_URL
    }
  }
  
})