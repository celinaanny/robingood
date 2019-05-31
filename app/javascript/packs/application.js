import "bootstrap";
import {addAttributesToQRCode} from "./qrcode";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initSweetalert } from './sweetalert';
import { sendCongrats } from "./congrats_popup";
import { initAutocomplete } from '../plugins/init_autocomplete';


addAttributesToQRCode();
initAutocomplete();
initMapbox();

if (document.querySelector("#address-send-congrats")) {
  sendCongrats('#address-send-congrats', {
    title: "Congrats... Now all you need to do is wait!",
    text: "Your QR codes will be in your mailbox shortly",
    icon: "success"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#hidden-address-btn');
      link.click();
    }
  });
}

if (document.querySelector("#hidden-qr-count")) {
  initSweetalert('#sweet-alert-init', {
    title: "Congrats... You're almost done!",
    text: `Simply take sticker no. ${ document.querySelector("#hidden-qr-count").innerHTML.trim() } from your sticker set and stick it onto your item. Done?`,
    icon: "success"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#create-item-btn');
      link.click();
    }
  });
}


