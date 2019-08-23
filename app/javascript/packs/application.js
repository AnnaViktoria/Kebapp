import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

// <-- this makes the falafel jump, don't remove!

let pita = document.getElementsByClassName("pita")[0];

if (pita) {
  let delay = 1000;
  let count = 1;

  let push = setInterval(() => {

    if (count%2) {
        pita.classList.toggle("push-down");

      setTimeout(() => {
        pita.classList.toggle("push-down");
      },200);
    }

    count++;


  },delay);

}

// <-- end of jumping falafel
