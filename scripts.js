document.addEventListener('DOMContentLoaded', function () {
    const navToggle = document.querySelector('.nav-toggle');
    const navMenu = document.querySelector('.nav-menu');
    const header = document.querySelector('header');
    const body = document.body;

    // Función para agregar o quitar la clase 'fixed' al header y cuerpo
    function handleScroll() {
        if (window.scrollY > 0) {
            header.classList.add('fixed');
            body.classList.add('fixed-nav');
        } else {
            header.classList.remove('fixed');
            body.classList.remove('fixed-nav');
        }
    }

    // Evento de scroll
    window.addEventListener('scroll', handleScroll);

    navToggle.addEventListener('click', function () {
        navMenu.classList.toggle('show');
    });

    // Cerrar el menú al hacer clic en un enlace
    const navLinks = document.querySelectorAll('.nav-menu a');
    navLinks.forEach(function (link) {
        link.addEventListener('click', function () {
            navMenu.classList.remove('show');
        });
    });
});
