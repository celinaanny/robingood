import "bootstrap";
import {addAttributesToQRCode} from "./qrcode";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initSweetalert } from './sweetalert';

addAttributesToQRCode();
initMapbox();
initSweetalert('#sweet-alert-init', {
  title: "Congrats... You're almost done!",
  text: `Simply take sticker no. ${document.querySelector("#hidden-qr-count").innerHTML.trim()} from your set of stickers and put it on your device. Done?`,
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#create-item-btn');
    link.click();
  }
});
