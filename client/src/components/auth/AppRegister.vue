<template>
  <div class="centered-container">
    <h4 class="ma-4">Sign up and start learning</h4>
    <v-sheet width="400">
      <v-form @submit.prevent>
        <v-text-field label="User Name" variant="outlined" class="font-weight-bold" v-model="fullName"></v-text-field>
        <v-text-field label="Email Id" variant="outlined" class="font-weight-bold" v-model="email"></v-text-field>
        <v-text-field label="Password" variant="outlined" class="font-weight-bold" v-model="password"></v-text-field>
        <v-btn color="purple-darken-4" type="submit" block class="submit mt-2 font-weight-bold">Register Now</v-btn>
      </v-form>
      <hr class="ma-4">
      <p class="my-4 text-center">Already have an account ? <router-link to="/" style="cursor: pointer; color: #6200EA;"
          class=" text-decoration-underline font-weight-bold">Login
        </router-link></p>
    </v-sheet>
  </div>
</template>

<style scoped>
.centered-container {
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  min-height: 100vh;
}

.submit {
  height: 60px;
}
</style>

<script>
export default {
  data() {
    return {
      fullName: '',
      email: '',
      password: '',
    }
  },
  methods: {

  }
}
</script>
