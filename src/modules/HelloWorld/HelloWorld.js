const HelloWorld = () => {
  const greetings = ["Hello", "Hi", "Greetings", "Yo"];
  return greetings[Math.floor(Math.random() * greetings.length)];
};

export default HelloWorld;
