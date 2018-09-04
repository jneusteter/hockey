<template>
  <div class="row">
    <div class="col-lm">
      <ol>
        <li 
          v-for="goal in game.goals"
          :key="goal.id"
        >{{ goals }}</li>
      </ol>
    </div>
  </div>
</template>

<script>
export default {

}
</script>
