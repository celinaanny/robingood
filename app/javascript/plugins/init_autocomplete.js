import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('finding_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocomplete = () => {
  const addressInput = document.getElementById('finding_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
