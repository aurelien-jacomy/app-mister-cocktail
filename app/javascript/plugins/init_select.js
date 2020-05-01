import $ from 'jquery'
import 'select2';

const initSelect = () => {
  $('#dose_ingredient_id').select2(); // (~ document.querySelectorAll)
};

export { initSelect };
