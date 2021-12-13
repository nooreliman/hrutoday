import introJs from "intro.js";
import "intro.js/introjs.css";

var intro = introJs();

const initIntro = () => {
  window.addEventListener("load", function () {
  var hasRunIntro = localStorage.getItem("hasRunIntro");
    if (hasRunIntro !== "1") {
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
            intro: "First, you can start by logging your mood for the day.",
          },
          {
            element: document.querySelector(".mood-tracker"),
            intro: "This is the mood graph to track your moods.",
          },
          {
            element: document.querySelector(".home"),
            intro: "Returns you to the homepage(here!)",
          },
          {
            element: document.querySelector(".affirm"),
            intro: "To view our affirmation page and read supportive messages!",
          },
          {
            element: document.querySelector(".forum"),
            intro: "To view our forums and start posting!",
          },
          {
            element: document.querySelector(".notification"),
            intro: "Check your notifications here!",
          },
          {
            title: "Farewell!",
            intro: "And we have come to the end of our tour!",
          },
        ],
      })
      .start();

      intro.oncomplete(function () {
        localStorage.setItem("hasRunIntro", "1");
      });
      intro.onexit(function () {
        localStorage.setItem("hasRunIntro", "1")

      });

    } else {

      return;
    }
  },
)};

export { initIntro };


