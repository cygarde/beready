import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Bottes","Rechaud", "Duvet", "Poncho", "Tente", "Sac à dos", "Gourde", "Appareil photo", "Tapis de sol"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
