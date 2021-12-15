import introJs from "intro.js";
import "intro.js/introjs.css";

var intro = introJs();

const initIntro = () => {
  window.addEventListener("load", function () {
    var hasRunIntro = localStorage.getItem("hasRunIntro");
    if (hasRunIntro !== "1" && window.location.pathname === "/") {
      intro
        .setOptions({
          skipLabel: "Skip",

          steps: [
            {
              title: "Welcome",
              intro: "Hello there! Welcome to hrutoday!",
            },
            {
              element: document.querySelector(".log-mood"),
              intro: "You can log your mood multiple times a day.",
            },
            {
              element: document.querySelector(".mood-tracker"),
              intro: "This is the mood graph to track your past moods.",
            },
            {
              element: document.querySelector(".home"),
              intro: "Click here to return to the homepage",
            },
            {
              element: document.querySelector(".forum"),
              intro:
                "And here for our forums - start posting in our community!",
            },
            {
              element: document.querySelector(".notifications"),
              intro: "You'll receive all notifications here",
            },
            {
              title: "Farewell!",
              intro: "Start by logging how you feel right now! 😊",
            },
          ],
        })
        .start();

      intro.oncomplete(function () {
        localStorage.setItem("hasRunIntro", "1");
      });
      intro.onexit(function () {
        localStorage.setItem("hasRunIntro", "1");
      });
    } else {
      return;
    }
  });
};

export { initIntro };
