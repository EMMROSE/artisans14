const formSportSessions = () => {
  const formContainer = document.querySelector('.form-container');

  if (formContainer) {
    const gifts = document.querySelectorAll('.form-container .gift-choice');

    // Add click effect on gifts radio-button
    gifts.forEach((gift) => {
      gift.addEventListener('click', (event) => {
        event.currentTarget.classList.toggle('active');
      });
    });


    // Hover effect function for form range element
    // - Array of HTML elements of the range
    // - Name of the dataset

    const hoverEffect = (arr, data) => {
      arr.forEach((element) => {
        element.addEventListener('mouseover', (event) => {
          const currentElement = (event.currentTarget.dataset[`${data}`]);
          arr.slice(0, currentElement).forEach((element) => {
            element.classList.add('hover');
          });
        });

        element.addEventListener('mouseleave', (event) => {
          arr.forEach((element) => {
            element.classList.remove('hover');
          })
        });
      });
    };


    // Click effect function for form range element, takes 2 arguments:
    // - Array of HTML elements of the range
    // - Name of the dataset

    const clickEffect = (arr, data) => {
      arr.forEach((element) => {
        element.addEventListener('click', (event) => {
          const currentElement = (event.currentTarget.dataset[`${data}`]);
          arr.slice(0, currentElement).forEach((element) => {
            element.classList.add('active');
            element.classList.remove('non-active');
          });

          arr.slice(currentElement, arr.length).forEach((element) => {
            element.classList.remove('active');
            element.classList.add('non-active');
          });
        });
      });
    };
  };
};

export { formSportSessions }
