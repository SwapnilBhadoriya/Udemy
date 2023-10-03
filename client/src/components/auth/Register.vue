<template>
  <div class="centered-container">
    <v-sheet width="400">
      <v-form @submit.prevent>
        <v-text-field label="User Name" variant="outlined" class="font-weight-bold" v-model="fullName"></v-text-field>
        <v-text-field label="Email Id" variant="outlined" class="font-weight-bold" v-model="email"></v-text-field>
        <v-text-field label="Password" variant="outlined" class="font-weight-bold" v-model="password"></v-text-field>
        <v-btn color="purple-accent-4" type="submit" block class="submit mt-2 font-weight-bold" >Register Now</v-btn>
      </v-form>
    </v-sheet>
  </div>
</template>

<style scoped>
.centered-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}
.submit{
    height:60px;
}
</style>

<script>
export default{
    data(){
        return{
            fullName:'',
            email:'',
            password:'',
        }
    },
    methods:{

    }
}
</script>
