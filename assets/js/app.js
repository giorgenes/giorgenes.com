'use strict'

document.querySelector('.menuBtn').addEventListener('click', () => {
  document.querySelector('.menu').classList.toggle('-translate-x-full')
})

document.querySelector('.xBtn').addEventListener('click', () => {
  document.querySelector('.menu').classList.toggle('-translate-x-full')
})


const swiper = new Swiper('.blogSwiper', {
  loop: true,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  spaceBetween: 30,
  slidesPerView: 1,
  autoplay: {
    delay: 3000,
  },
  breakpoints: {
    640: {
      slidesPerView: 2,
      spaceBetween: 30,
    },
    768: {
      slidesPerView: 2,
      spaceBetween: 50,
    },
    1024: {
      slidesPerView: 3,
      spaceBetween: 50,
    }
  }
});