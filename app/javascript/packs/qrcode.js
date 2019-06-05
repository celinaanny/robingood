
const addAttributesToQRCode = () => {
  const qrCodes = document.querySelectorAll(".qr-code svg");
  qrCodes.forEach((qrCode) => {
    qrCode.setAttribute("viewBox", "0 0 451 451");
    qrCode.setAttribute("preserveAspectRatio", "xMinYMin slice");
    console.log(qrCode);
  })

}

export { addAttributesToQRCode };
