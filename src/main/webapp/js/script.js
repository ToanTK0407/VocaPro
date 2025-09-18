// Function toggle dropdown
window.toggleDropdown = function () {
    const avatarContainer = document.querySelector('.avatar-container');
    const dropdownMenu = document.getElementById('dropdownMenu');

    if (avatarContainer && dropdownMenu) {
        avatarContainer.classList.toggle('active');
        dropdownMenu.classList.toggle('active');
    }
}

// Close dropdown when clicking outside
document.addEventListener('click', function (event) {
    const userMenu = document.querySelector('.user-menu');
    const dropdownMenu = document.getElementById('dropdownMenu');
    const avatarContainer = document.querySelector('.avatar-container');

    if (userMenu && !userMenu.contains(event.target)) {
        if (dropdownMenu) dropdownMenu.classList.remove('active');
        if (avatarContainer) avatarContainer.classList.remove('active');
    }
});

// Close dropdown when pressing Escape
document.addEventListener('keydown', function (event) {
    if (event.key === 'Escape') {
        const dropdownMenu = document.getElementById('dropdownMenu');
        const avatarContainer = document.querySelector('.avatar-container');
        if (dropdownMenu) dropdownMenu.classList.remove('active');
        if (avatarContainer) avatarContainer.classList.remove('active');
    }
});
