<template>
  <table>
    <thead>
      <tr>
        <th colspan="2">POST LIST</th>
      </tr>
      <tr>
        <th>ID</th>
        <th>Title</th>
        <th>created_at</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="post in posts" :key="post.id">
        <td>{{ post.id }}</td>
        <td>{{ post.title }}</td>
        <td>{{ post.created_at }}</td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  name: "PostIndex",
  props: {
    posts: Array
  },
  methods: {}
};
</script>

<style scoped>
</style>
