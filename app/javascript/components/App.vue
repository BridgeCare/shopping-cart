<template>
  <div>
    <h1>Users</h1>
    <ul>
      <li v-for="user in users" :key="user.id">
        {{ user.id }} — {{ user.name }}
      </li>
    </ul>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'

const users = ref([])

onMounted(async () => {
  const response = await fetch('/users.json')
  users.value = await response.json()
})
</script>
