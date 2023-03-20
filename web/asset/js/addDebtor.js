
function onlyNumberKey(evt) {
    var ASCIICode = (evt.which) ? evt.which : evt.keyCode;
    
    // Check if input is a digit or a dot and allow it
    if ((ASCIICode >= 48 && ASCIICode <= 57) || ASCIICode === 46 || ASCIICode <=32 ) { 
        
        // Formatting logic goes here...
        
        return true;
    }
    return false;  
}


const loadAddDebtor =()=>{


const imageInput = document.getElementById('image-input');
const imagePreview = document.getElementById('image-preview');
const cancelButton = document.getElementById('cancel-button');
imageInput.addEventListener('change', handleImageSelect);
cancelButton.addEventListener('click', cancelImageSelect);
function handleImageSelect(event) {
    imagePreview.innerHTML = '';
  const file = event.target.files[0];
  const reader = new FileReader();
  reader.onload = (event) => {
    const image = new Image();
    image.src = event.target.result;
     // Xóa hình ảnh hiện có trong phần xem trước
    imagePreview.appendChild(image); // Thêm hình ảnh mới vào phần xem trước
    cancelButton.style.display = 'inline-block'; // Hiển thị nút hủy
    
  };
  reader.readAsDataURL(file);
}


function cancelImageSelect(event) {

    event.preventDefault();

  imagePreview.innerHTML = ''; // Xóa hình ảnh trong phần xem trước
  imageInput.value = null; // Xóa tệp hình ảnh đã chọn
  cancelButton.style.display = 'none'; // Ẩn nút hủy
  //heyyyyy
}
};
loadAddDebtor();

