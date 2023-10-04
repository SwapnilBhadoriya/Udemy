import { createRouter, createWebHistory } from "vue-router";

import AppLogin from "../components/auth/AppLogin.vue";
import AppRegister from "../components/auth/AppRegister.vue";

const routes = [
  { path: "/", component: AppLogin },
  { path: "/register", component: AppRegister },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
