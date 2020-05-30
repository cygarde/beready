const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const links = document.querySelectorAll(".nav-link");

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
        links.forEach(link => link.classList.remove('text-white'));
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        links.forEach(link => link.classList.add('text-white'));
      }
    });
  }
}
export { initUpdateNavbarOnScroll };
