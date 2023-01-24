document.querySelectorAll(".content-box__input").forEach((inputElement) => {
  const contentboxElement = inputElement.closest(".content-box");

  contentboxElement.addEventListener("click", (e) => {
    inputElement.click();
  });

  inputElement.addEventListener("change", (e) => {
    if (inputElement.files.length) {
      updateThumbnail(contentboxElement, inputElement.files[0]);
    }
  });

  contentboxElement.addEventListener("dragover", (e) => {
    e.preventDefault();
    contentboxElement.classList.add("content-box--over");
  });

  ["dragleave", "dragend"].forEach((type) => {
	  contentboxElement.addEventListener(type, (e) => {
		  contentboxElement.classList.remove("content-box--over");
    });
  });

  contentboxElement.addEventListener("drop", (e) => {
    e.preventDefault();

    if (e.dataTransfer.files.length) {
      inputElement.files = e.dataTransfer.files;
      updateThumbnail(contentboxElement, e.dataTransfer.files[0]);
    }

    contentboxElement.classList.remove("content-box--over");
  });
});


function updateThumbnail(contentboxElement, file) {
  let thumbnailElement = contentboxElement.querySelector(".content-box__thumb");

  //removing the prompt
  if (contentboxElement.querySelector(".content-box__prompt")) {
	  contentboxElement.querySelector(".content-box__prompt").remove();
  }

  
  if (!thumbnailElement) {
    thumbnailElement = document.createElement("div");
    thumbnailElement.classList.add("content-box__thumb");
    contentboxElement.appendChild(thumbnailElement);
  }

  thumbnailElement.dataset.label = file.name;

  //Showing the thumbnail for image files
  if (file.type.startsWith("image/")) {
    const reader = new FileReader();

    reader.readAsDataURL(file);
    reader.onload = () => {
      thumbnailElement.style.backgroundImage = `url('${reader.result}')`;
    };
  } else {
    thumbnailElement.style.backgroundImage = null;
  }
}
