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
					<tr v-for="game in games">
						<th>{{ game.id }}</th>
						<th>{{ game.city }}</th>
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
	methods: { 
		loadGames() {
			axios.get('/api/games')
      .then((result) => {
				this.games = result.data
			})
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
	}
}
</script>
