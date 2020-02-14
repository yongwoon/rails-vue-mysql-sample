import Vue from "vue/dist/vue.js";
import PostsIndexView from "./../../views/posts/Index";

document.addEventListener("DOMContentLoaded", () => {
  const element = document.getElementById("posts-index-view");
  const data = JSON.parse(element.getAttribute("data"));

  console.log("test");
  console.log(data.posts);

  new Vue({
    el: element,
    render: h => h(PostsIndexView, { props: { posts: data.posts } })
  });
});
