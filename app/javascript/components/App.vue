<template>
  <div>
    <h1>{{ greeting }}</h1>
    <p>Count: {{ count }}</p>
    <button @click="count++">Increment</button>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const greeting = ref('Hello from Vue + Vite + Rails!')
const count = ref(0)
</script>
