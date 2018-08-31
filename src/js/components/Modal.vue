<template> 
  <transition name="modal">
    <div 
      class="modal modal-mask" 
      style="display: block"
    >
      <div
        class="modal-dialog" 
        role="document"
      >
        <div class="modal-content">
          <div class="modal-header">
            <slot name="header" />
          </div>
          
          <div class="modal-body">
            <slot name="body" />
          </div>
          
          <div class="modal-footer">
            <slot name="footer" />
          </div>
        </div>
      </div>
    </div>
  </transition> 
</template>

<style>
.modal-mask {
  position: fixed;
  z-index: 9998;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, .5);
  display: table;
  transition: opacity .3s ease;
}
</style>
