import { createRouter, createWebHistory } from "vue-router";

import Login from "../components/auth/Login.vue";
import Register from "../components/auth/Register.vue";

const routes = [
  { path: "/", component: Login },
  { path: "/register", component: Register },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
