import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Louez votre matériel pour vos vacances ...", "Augmentez vos revenu !", "Tente", "sace à dos", "gourde", "appareille photo", "Des milliers d'annonces... !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
