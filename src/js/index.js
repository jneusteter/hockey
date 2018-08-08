import Vue from 'vue';

window.qs = require('qs');
window.axios = require('axios')

Vue.component('game-table', require('./components/GameTable.vue').default);

const app = new Vue ({
  el: '#app',
  data: {
    navOpen: false
  }
});