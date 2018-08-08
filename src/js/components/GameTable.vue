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
         {{games}}
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
    loadGames: function () {
      axios.get('/api/games')
      .then((res) => {
        this.games = this.res
      })
    }
  },
  created: function(){
    this.loadGames();
    // polling api every 30 seconds
    setInterval(function () {
      this.loadGames();
    }.bind(this), 30000);
  },

}
</script>

