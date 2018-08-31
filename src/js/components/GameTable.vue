<template>
  <div class="row">
    <div class="col-lg-8">
      <table class="table">
        <thead>
          <tr>
            <th>ID</th>
          </tr>
        </thead>
        <tbody>
          <tr 
            v-for="game in games" 
            :key="game.id"
          >
            <td>{{ game.id }}</td>
            <td>
              <button
                class="btn btn-primary"
                @click="deleteGame(game)"
              >Delete</button> 
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
export default {
	data() {
		return {
			games: []
		}
	},
	created: function() {
		this.loadGames()
		// polling api every 30 seconds
		setInterval(
			function() {
				this.loadGames()
			}.bind(this),
			30000
		)
	},
	methods: { 
		loadGames() {
			axios.get('/api/games')
				.then((res) => {
					this.games = res.data
				})
		},
		deleteGame(game) {
			axios.get('/game/' + game.id + '/delete')
				.then(() => {
					this.loadGames()
				})
		}
	},
}
</script>
