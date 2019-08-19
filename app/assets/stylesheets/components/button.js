var SignupButtons = {
  request: function(element) {
    element.classList.add('-request');
  },

  success: function(element) {
    element.classList.remove('-request');
    element.classList.add('-success');
  },

  reset: function(element) {
    element.classList.remove('-success');
  },

  flow: function(element) {
    SignupButtons.request(element);

    setTimeout(function() {
      SignupButtons.success(element);
    }, 2150);

    setTimeout(function() {
      SignupButtons.reset(element);
    }, 4000);
  },

  init: function() {
    var buttons = document.querySelectorAll('button');

    for (let i = 0; i < buttons.length; i++) {
      var button = buttons[i];

      button.addEventListener('click', function() {
        SignupButtons.flow(button);
      });
    }
  }
};

window.onload = SignupButtons.init;
