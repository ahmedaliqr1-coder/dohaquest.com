$(function () {
    // RIDES INFO (only bind on pages that have .info-trigger)
    if ($(".info-trigger").length) {
        $(".info-trigger").on("click", function (e) {
            e.preventDefault();
            var id = $(this).attr("href");

            // Reduce animation complexity & duration
            var $header = $(".page-header");
            var $current = $(".ride-info.visible-ride");
            var $target = $(".ride-info" + id);

            // If already visible, do nothing
            if ($target.hasClass("visible-ride")) {
                return;
            }

            // Hide header once, but faster
            if (!$header.hasClass("hidden")) {
                $header.slideUp(300).addClass("hidden");
            }

            // Swap visible ride panels with shorter animations
            $current.slideUp(250).removeClass("visible-ride");
            $target.slideDown(250).addClass("visible-ride");

            // No smooth scroll (keeps INP low)
            // window.scrollTo({ top: 0, behavior: "auto" });
        });

        // BACK TO TOP (only needed where rides info exists)
        $(".back-to-top").on("click", function (e) {
            e.preventDefault();
            window.scrollTo({ top: 0, behavior: "auto" });
        });
    }

    // SEARCH BUTTON TRIGGER
    $(".header .inner-container .search-section .search-btn").on(
        "click",
        function (e) {
            e.preventDefault();
            $(".header .inner-container .search-section form").slideToggle(300);
        }
    );

    $(".header .inner-container .search-section form a.close-btn").on(
        "click",
        function (e) {
            e.preventDefault();
            $(".header .inner-container .search-section form").slideUp(300);
        }
    );

    // HOMEPAGE VIDEO MUTE/UNMUTE BUTTON
    $(".quest-video-section .overlay .video-control-btn").on(
        "click",
        function ($e) {
            $e.preventDefault();
            if ($(this).hasClass("mute-icon")) {
                $(".quest-video-section #vid").prop("muted", false);
                $(this).removeClass("mute-icon").addClass("unmute-icon");
            } else {
                $(".quest-video-section #vid").prop("muted", true);
                $(this).removeClass("unmute-icon").addClass("mute-icon");
            }
        }
    );

    // SCROLLING EVENT ON HOMEPAGE
    $(".section-pagination a").on("click", function () {
        $(".section-pagination a").removeClass("active");
        $(this).addClass("active");
    });

    // PLUS & MINUS IN ACCORDION
    $(".accordion .card .card-header .sign").on("click", function ($e) {
        $e.preventDefault();
        $(this).siblings(".btn-link").click();
    });

    // MOBILE MENU BUTTON TRIGGER
    $(".menu-trigger").on("click", function (e) {
        e.preventDefault();
        var $menu = $(".overlay-menu");
        var isActive = $menu.hasClass("active");
        var duration = 200;

        if (isActive) {
            $menu.slideUp(duration).removeClass("active");
        } else {
            $menu.slideDown(duration).addClass("active");
        }
    });

    // MOBILE MENU CLOSE BUTTON
    $(".overlay-menu .close-btn").on("click", function (e) {
        e.preventDefault();
        $(".overlay-menu").slideUp(200);
        $(".overlay-menu").removeClass("active");
    });

    // MOBILE MENU DROPDOWN MENU
    $(".overlay-menu .nav-menu li.has-submenu a#submenu-trigger").on(
        "click",
        function (e) {
            e.preventDefault();
            var $allSubmenus = $(
                ".overlay-menu .nav-menu li.has-submenu ul.submenu-nav"
            );
            var $thisSubmenu = $(this).next(".submenu-nav");
            var duration = 200;

            if ($thisSubmenu.hasClass("open")) {
                $thisSubmenu.slideUp(duration).removeClass("open");
            } else {
                $allSubmenus.slideUp(duration).removeClass("open");
                $thisSubmenu.slideDown(duration).addClass("open");
            }
        }
    );

    // SIDE MENU
    $(".side-section .side-btn").on("click", function (e) {
        e.preventDefault();
        var $parent = $(this).parent();
        var isArabic = $parent.hasClass("ar");
        var shown = $parent.hasClass("shown");
        var duration = 200; // shorter animation

        if (isArabic) {
            $parent.animate({ left: shown ? "-=80px" : "+=80px" }, duration);
        } else {
            $parent.animate({ right: shown ? "-=75px" : "+=75px" }, duration);
        }

        $parent.toggleClass("shown", !shown);
    });

    // MODAL CLOSE BUTTON
    $(".modal-container .close-btn").on("click", function (e) {
        e.preventDefault();
        $(this).parent().parent().fadeOut(200);
    });

    // MODAL
    $(".side-section .side-action-btn").on("click", function (e) {
        e.preventDefault();
        var $parent = $(this).parent().parent().parent();
        var duration = 200;

        if ($parent.hasClass("ar")) {
            $parent.animate({ left: "-=80px" }, duration);
        } else {
            $parent.animate({ right: "-=75px" }, duration);
        }

        $parent.removeClass("shown");
        $(".overlay-" + $(this).data("modal") + "-modal").fadeIn(200);
    });

    // ============================================
    // SWIPER INITIALIZATIONS (GUARDED)
    // ============================================

    // Hero / main slider (home)
    if (
        document.querySelector(".slider-section") &&
        typeof Swiper !== "undefined"
    ) {
        new Swiper(".slider-section", {
            slidesPerView: 1,
            speed: 2500,
            autoplay: true,
            loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                renderBullet: function (index, className) {
                    return (
                        '<span class="' +
                        className +
                        '">' +
                        (index + 1) +
                        "</span>"
                    );
                },
            },
        });
    }

    // Info slider (home)
    if (
        document.querySelector(".info-container") &&
        typeof Swiper !== "undefined"
    ) {
        new Swiper(".info-container", {
            speed: 1000,
            observer: true,
            observeParents: true,
            autoplay: true,
            pagination: {
                clickable: true,
                el: ".swiper-pagination",
            },
        });
    }

    // Header slider (home)
    if (
        document.querySelector(".header-container") &&
        typeof Swiper !== "undefined"
    ) {
        new Swiper(".header-container", {
            speed: 1000,
            autoplay: true,
            pagination: {
                clickable: true,
                el: ".swiper-pagination",
            },
        });
    }

    // Events slider (home or events page)
    if (
        document.querySelector(".events-container") &&
        typeof Swiper !== "undefined"
    ) {
        var eventsLoop =
            document.querySelectorAll(
                ".events-container .swiper-slide:not(.swiper-slide-duplicate)"
            ).length > 3;

        new Swiper(".events-container", {
            slidesPerView: 1,
            speed: 500,
            effect: "fade",
            autoplay: true,
            loop: eventsLoop,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
    }

    // Upcoming events slider
    if (
        document.querySelector(".upcoming-events-container") &&
        typeof Swiper !== "undefined"
    ) {
        var upcomingLoop =
            document.querySelectorAll(
                ".upcoming-events-container .swiper-slide:not(.swiper-slide-duplicate)"
            ).length > 3;

        new Swiper(".upcoming-events-container", {
            slidesPerView: 3,
            speed: 500,
            spaceBetween: 30,
            autoplay: true,
            loop: upcomingLoop,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            breakpoints: {
                768: {
                    slidesPerView: 1,
                    spaceBetweenSlides: 0,
                },
                999: {
                    slidesPerView: 2,
                    spaceBetweenSlides: 10,
                },
            },
        });
    }

    // Rides carousels (used on /rides)
    if (typeof Swiper !== "undefined") {
        $(".rides-container").each(function (index, el) {
            var slideCount = $(el).find(
                ".swiper-slide:not(.swiper-slide-duplicate)"
            ).length;
            if (slideCount === 0) return;

            new Swiper(el, {
                slidesPerView: 3,
                speed: 500,
                autoplay: true,
                spaceBetween: 10,
                loop: slideCount > 3,
                observer: true,
                observeParents: true,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                breakpoints: {
                    768: {
                        slidesPerView: 1,
                        spaceBetweenSlides: 0,
                    },
                    999: {
                        slidesPerView: 2,
                        spaceBetweenSlides: 10,
                    },
                },
            });
        });
    }

    var characters = new Swiper(".characters-section", {
        slidesPerView: 3,
        speed: 1000,
        loop: true,
        autoplay: true,
        centeredSlides: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        // Responsive breakpoints
        breakpoints: {
            768: {
                slidesPerView: 1,
                spaceBetweenSlides: 0,
            },
            999: {
                centeredSlides: false,
                slidesPerView: 2,
                spaceBetweenSlides: 30,
            },
        },
    });

    // Past events slider
    if (
        document.querySelector(".past-events-container") &&
        typeof Swiper !== "undefined"
    ) {
        var pastLoop =
            document.querySelectorAll(
                ".past-events-container .swiper-slide:not(.swiper-slide-duplicate)"
            ).length > 3;

        new Swiper(".past-events-container", {
            slidesPerView: 3,
            speed: 500,
            autoplay: true,
            spaceBetween: 30,
            loop: pastLoop,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            breakpoints: {
                768: {
                    slidesPerView: 1,
                    spaceBetweenSlides: 0,
                },
                999: {
                    slidesPerView: 2,
                    spaceBetweenSlides: 10,
                },
            },
        });
    }

    // Gallery slider (gallery page)
    if (
        document.querySelector(".gallery-slider-container") &&
        typeof Swiper !== "undefined"
    ) {
        new Swiper(".gallery-slider-container", {
            speed: 1000,
            autoplay: true,
            pagination: {
                clickable: true,
                el: ".swiper-pagination",
            },
        });
    }
});

document.addEventListener("DOMContentLoaded", function () {
    var lazyloadImages;

    if ("IntersectionObserver" in window) {
        lazyloadImages = document.querySelectorAll(".lazy");
        var imageObserver = new IntersectionObserver(function (
            entries,
            observer
        ) {
            entries.forEach(function (entry) {
                if (entry.isIntersecting) {
                    var image = entry.target;
                    image.classList.remove("lazy");
                    imageObserver.unobserve(image);
                }
            });
        });

        lazyloadImages.forEach(function (image) {
            imageObserver.observe(image);
        });
    } else {
        var lazyloadThrottleTimeout;
        lazyloadImages = document.querySelectorAll(".lazy");

        function lazyload() {
            if (lazyloadThrottleTimeout) {
                clearTimeout(lazyloadThrottleTimeout);
            }

            lazyloadThrottleTimeout = setTimeout(function () {
                var scrollTop = window.pageYOffset;
                lazyloadImages.forEach(function (img) {
                    if (img.offsetTop < window.innerHeight + scrollTop) {
                        img.src = img.dataset.src;
                        img.classList.remove("lazy");
                    }
                });
                if (lazyloadImages.length == 0) {
                    document.removeEventListener("scroll", lazyload);
                    window.removeEventListener("resize", lazyload);
                    window.removeEventListener("orientationChange", lazyload);
                }
            }, 20);
        }

        document.addEventListener("scroll", lazyload);
        window.addEventListener("resize", lazyload);
        window.addEventListener("orientationChange", lazyload);
    }

    $(".image-lightbox").on("click", function () {
        $(".image-lightbox").fadeOut(200);
    });

    $(".image-lightbox-img").on("click", function (e) {
        e.stopPropagation();
    });
});
