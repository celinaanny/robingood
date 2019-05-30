import "bootstrap";
import {addAttributesToQRCode} from "./qrcode";
import { initSweetalert } from './sweetalert';

addAttributesToQRCode();
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
