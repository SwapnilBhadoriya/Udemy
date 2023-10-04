<template>
    <div class="d-flex flex-column justify-center align-center h-screen mx-auto">
        <h4 class="ma-4">Log in to your account</h4>
        <v-sheet min-width="250" max-width="400" class="w-50">
            <v-form @submit.prevent="onSubmit">
                <v-text-field type="email" label="Email" variant="outlined" v-model="email"></v-text-field>
                <v-text-field type="password" label="Password" variant="outlined" v-model="password"
                    autocomplete="false"></v-text-field>
                <v-btn color="purple-darken-4" type="submit" block rounded="lg" size="x-large" class="mt-2">Login</v-btn>
            </v-form>
            <p class="my-4 text-center">or <a style="cursor: pointer; color: #6200EA;"
                    class=" text-decoration-underline font-weight-bold">Forgot
                    Password</a></p>
            <hr>
            <p class="my-4 text-center">Don't have an account ? <router-link to="/register"
                    style="cursor: pointer; color: #6200EA;" class=" text-decoration-underline font-weight-bold">Sign up
                </router-link></p>
        </v-sheet>

    </div>
</template>
<script>
export default {
    data() {
        return {
            email: '',
            password: ''
        }
    },
    methods: {
        onSubmit() {
            const credentials = { email: this.email, password: this.password }
            console.log(credentials);
        }
    }
}


</script>