import $ from 'jquery';
import select2 from 'select2';

const multipleSelect = () => {
  $(document).ready(function() {
    $('#plant_tag_tag').select2();
  });
}

export { multipleSelect };
