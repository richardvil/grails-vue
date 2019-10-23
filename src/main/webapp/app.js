import Vue from 'vue/dist/vue'
import Buefy from 'buefy'

// Style related files
import './sass/main'

Vue.use(Buefy);

// Add Vue components to register globally
Vue.component("example-component", require("./components/Example.vue").default);

const app = new Vue({
    el: '#app',
    data: {
    }
});
