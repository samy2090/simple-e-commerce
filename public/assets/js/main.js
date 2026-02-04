$(function () {

    "use strict";

    /**
     * Handles the movement of custom cursor elements on the page.
     *
     * This event listener tracks the mouse movement across the document and updates
     * the position of the custom cursor elements in real-time. The `.cursor` elements
     * are moved to follow the mouse pointer using the `pageX` and `pageY` coordinates.
     * The first `.cursor` element updates immediately, while the second `.cursor`
     * element updates with a delay of 200 milliseconds to create a trailing effect.
     *
     * @event document#mousemove
     * @param {Event} e - The mousemove event object containing information about the mouse position.
     * @function
     */
    $(document).on("mousemove", function (e) {
        $(".cursor").eq(0).css({ left: e.pageX, top: e.pageY });
        setTimeout(function () {
            $(".cursor").eq(1).css({ left: e.pageX, top: e.pageY });
        }, 100);
    });
});



const lenis = new Lenis({
    duration: 1.2,
    easing: (t) => Math.min(1, 1.001 - Math.pow(2, -10 * t)),
    direction: 'vertical',
    smooth: true,
});

function raf(time) {
    lenis.raf(time);
    requestAnimationFrame(raf);
}
requestAnimationFrame(raf);



AOS.init();