import "bootstrap";
import {addAttributesToQRCode} from "./qrcode";
import {addAttributesToRect} from "./qr_codes_styling";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initSweetalert } from './sweetalert';
import { sendCongrats } from "./congrats_popup";
import { addButtonToAddress } from "./select_address_box";
import { addNewAddress } from "./add_new_address";
import { addressSelect } from "./mark_address";
import { addClassToAddressBox } from "./mark_address";
import { initAutocomplete } from '../plugins/init_autocomplete';
import { init_notification } from './notification';
import { cog_rotation } from './cog-rotation';

addAttributesToQRCode();
initAutocomplete();
initMapbox();
init_notification();
addAttributesToRect();
cog_rotation();

if (document.querySelector("#address-send-congrats")) {
  sendCongrats('#address-send-congrats', {
    title: "Congrats... Now all you need to do is wait!",
    text: "Your QR codes will be in your mailbox shortly",
    icon: "success"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#hidden-qr-order-btn');
      link.click();
    }
  });
}

if (document.querySelector("#hidden-qr-count")) {
  initSweetalert('#sweet-alert-init', {
    title: "Congrats... You're almost done!",
    text: `Simply peel sticker no. ${ document.querySelector("#hidden-qr-count").innerHTML.trim() } off your sticker set and stick it onto your item. Done?`,
    icon: "success"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#create-item-btn');
      link.click();
    }
  });
}

$(function() {
  $('#button-scroll').on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 500, 'linear');
  });
});


if (document.querySelector("#sendcodes-page")) {
  addButtonToAddress();
}

if (document.querySelector("#new-address-btn")) {
  addNewAddress();
}

if (document.querySelector(".select-existing-address-btn")) {
  addressSelect();
}

if (document.querySelector("#sendcodes-page")) {
  addClassToAddressBox();
};

