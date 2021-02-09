const scrolledNav = () => {
  const element = document.querySelector('#js-animation');
  if (element) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 1200) {
        element.classList.remove('d-none');
        element.classList.add('animate__animated', 'animate__backInLeft');
      }
    });
  }
}

const scrolledNav2 = () => {
  const element = document.querySelector('#js-animation2');
  if (element) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 1200) {
        element.classList.remove('d-none');
        element.classList.add('animate__animated', 'animate__backInLeft');
      }
    });
  }
}

const scrolledNav3 = () => {
  const element = document.querySelector('#js-animation-p');
  if (element) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 0) {
        element.classList.remove('d-none');
        element.classList.add('animate__animated', 'animate__backInLeft');
      }
    });
  }
}

export { scrolledNav }
export { scrolledNav2 }
export { scrolledNav3 }

