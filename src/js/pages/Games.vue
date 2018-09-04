<template>
  <div class="row">
    <div class="col-md">
      <game-table />
    </div>
    <div class="col-md">
      <add-game-modal />
    </div>
  </div>
</template>

<script>
import addGame from '../components/AddGame.vue'
import gameTable from '../components/GameTable.vue'
export default {
	components: {
		'add-game-modal': addGame,
		'game-table': gameTable
	},
}
</script>

