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
        <td>
          <a v-bind:href="postUrl(post.id)">{{ post.title }}</a>
        </td>
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
  methods: {
    postUrl(post_id) {
      return `http://localhost:3000/posts/${post_id}`;
    }
  }
};
</script>

<style scoped>
</style>
