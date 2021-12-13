import introJs from "intro.js";
// import "intro.js/minified"

const initIntro = () => {
  introJs()
    .setOptions({
      steps: [
        {
          title: "Welcome",
          intro: "Hello World! 👋",
        },
        {
          element: document.querySelector(".log-mood"),
          intro: "This step focuses on an image",
        },
        {
          title: "Farewell!",
          element: document.querySelector(".card__image"),
          intro: "And this is our final step!",
        },
      ],
    })
    .start();
};

export { initIntro };
