import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find what you need for your next trip ...", "increase your income !", "Change your life !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
