import HelloWorld from "./HelloWorld";

const greetings = ["Hello", "Hi", "Greetings", "Yo"];

describe("HelloWorld", () => {
    test("Returns an expected greeting", () => {
        const greeting = HelloWorld();
        expect(greetings.includes(greeting)).toBeTruthy();
    });
})
