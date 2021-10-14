import HelloWorld from "./modules/HelloWorld/HelloWorld";

const init = () => {
  const greetingDom = document.querySelector(".hello-world");
  const greeting = HelloWorld();
  greetingDom.innerHTML = `${greeting}.`; 
}

if (
  document.readyState === "complete" ||
  (document.readyState !== "loading" && !document.documentElement.doScroll)
) {
  init();
} else {
  document.addEventListener("DOMContentLoaded", init);
}