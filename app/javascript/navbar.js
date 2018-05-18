function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.my-navbar');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('my-navbar-white');
    } else {
      navbar.classList.remove('my-navbar-white');
    }
  });
}

export { initUpdateNavbarOnScroll };
