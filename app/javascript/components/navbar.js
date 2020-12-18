const scrolledNav = () => {
  const intervention = document.querySelector('#js-animation');
  const element = document.querySelector('#js-animation2');
  if (intervention) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 300) {
        intervention.classList.remove('d-none');
        intervention.classList.add('animate__animated', 'animate__backInLeft');
      }
    });
  }
  if (element) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 800) {
        element.classList.remove('d-none');
        element.classList.add('animate__animated', 'animate__backInLeft');
      }
    });
  }
}



export { scrolledNav }
