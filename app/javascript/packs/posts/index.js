import Vue from "vue/dist/vue.js";
import PostsIndexView from "./../../views/posts/Index";

document.addEventListener("DOMContentLoaded", () => {
  const element = document.getElementById("posts-index-view");
  const data = JSON.parse(element.getAttribute("data"));

  new Vue({
    el: element,
    render: h => h(PostsIndexView, { props: { posts: data.posts } })
  });
});
