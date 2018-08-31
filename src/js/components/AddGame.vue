<template>
  <div>
    <modal v-if="showModal">
      <div slot="header">
        <h2>Add Game</h2>
      </div>

      <div slot="body">
        <form @submit.prevent="submitAndClose">
          <div class="form-group">
            <input 
              v-model="form.id" 
              type="text" 
              class="form-control" 
              placeholder="Game ID"
            >
          </div>
        </form>
      </div>

      <div slot="footer">
        <button 
          type="button" 
          class="btn btn-outline-info" 
          @click="closeModal()"
        > Close </button>

        <button 
          type="button" 
          class="btn btn-primary" 
          data-dismiss="modal" 
          @click="submitAndClose()"
        > Submit </button>
      </div>
    </modal>
    <button 
      type="button"
      class="btn btn-primary"
      @click="openModal()"
    >Add Game</button>
  </div>
</template>

<script>
import Modal from './Modal.vue'

export default {
	components: {
		modal: Modal
	},
	data() {
		return {
			showModal: false,
			form: {}
		}
	},
	methods: {
		openModal() {
			this.showModal = true
		},
		closeModal() {
			this.showModal = false
		},
		submitAndClose(e) {
			this.showModal = false
			this.form_result = false
			axios.post('/game/', qs.stringify(this.form)).then(res => {
				this.form_result = res.data
				setTimeout(
					function() {
						this.form_result = false
					}.bind(this),
					3000
				)
			})
		}
	}
}
</script>
