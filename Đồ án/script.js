// Get the Setting button and the setting options container
const settingBtn = document.getElementById("setting-btn");
const settingOptions = document.getElementById("setting-options");

// Toggle visibility of the setting options when clicking the "Setting" button
settingBtn.addEventListener("click", () => {
  if (
    settingOptions.style.display === "none" ||
    settingOptions.style.display === ""
  ) {
    settingOptions.style.display = "block"; // Show the options
  } else {
    settingOptions.style.display = "none"; // Hide the options
  }
});

// Add event listeners for each action button
document.getElementById("add-item").addEventListener("click", addItem);
document.getElementById("delete-item").addEventListener("click", deleteItem);
document.getElementById("edit-item").addEventListener("click", editItem);

function addItem() {
  alert("Thêm item clicked!");
}

function deleteItem() {
  alert("Xóa item clicked!");
}

function editItem() {
  alert("Chỉnh sửa item clicked!");
}
