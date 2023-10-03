import { createRouter, createWebHistory } from "vue-router";

import Login from "../components/auth/Login.vue";

const routes = [{ path: "/", component: Login }];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
