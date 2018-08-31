import Vue from 'vue'
import Game from './pages/Game.vue'

window.qs = require('qs')
window.axios = require('axios')

Vue.component('game', Game)

const app = new Vue ({
	el: '#app',
	data: {
		navOpen: false
	}
})
