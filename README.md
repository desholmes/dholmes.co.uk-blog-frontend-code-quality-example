# Example repo: Frontend Development Code Quality - What’s Good Enough?

Follow the [Frontend Development Code Quality - What’s Good Enough?](https://dholmes/co.uk/blog/frontend-development-code-quality/) blog post with this example repo.

A simple "[Hello World](https://hello.dholmes.co.uk)" application.

![hello-world](https://user-images.githubusercontent.com/1830123/137368817-6215896d-c379-4582-97f3-53aad8574986.png)

Remotes:

1. [Azure DevOps](https://dev.azure.com/codecupltd/DesHolmes/_git/dholmes.co.uk-blog-frontend-code-quality-example)
2. [GitHub](https://github.com/desholmes/dholmes.co.uk-blog-frontend-code-quality-example)
3. [GitLab](https://gitlab.com/codecupltd/dholmes.co.uk-blog-frontend-code-quality-example)

This project uses:

1. [JavaScript](https://en.wikipedia.org/wiki/JavaScript)
2. [Node v16.14.0](https://nodejs.org/en/)
3. [SaSS](https://sass-lang.com/)
4. [Parcel Bundler](https://parceljs.org/)
5. [ESLint](https://eslint.org/)
6. [Prettier](https://prettier.io/)
7. [Jest](https://jestjs.io/)

## Getting Started

1. Run `npm i`: To install the dependencies
2. Run `npm start` and open [localhost:1234](http://localhost:1234) in a browser to view the live reload development server
3. Changes in the `./src` directories will cause a live reload and compiled files to `./dist`
4. Press `CTRL+c` to stop the development server

## Commands

|Command|Description|
|---|---|
|`npm run clean`|Cleans the [./dist](./dist) directory|
|`npm run build`|Runs `npm run clean` and `parcel build`|
|`npm run build-serve`|Runs `http-server dist/` to statically serve the build in the [./dist](./dist) directory|
|`npm run lint`|Runs [ESLint](https://eslint.org/) with 0 warnings argument|
|`npm run lint-fix`|Runs [ESLint](https://eslint.org/) with 0 warnings and `--fix` arguments|
|`npm run prettier`|Runs [Prettier](https://prettier.io/) with `--check` argument|
|`npm run prettier-fix`|Runs [Prettier](https://prettier.io/) with `--write` argument|
|`npm run prettier-lint-fix`|Runs `prettier-fix` and `lint-fix` NPM scripts|
|`npm start`|Runs a local development server using the [Parcel Bundler](https://parceljs.org/)|
|`npm test`|Runs the unit test cases using [Jest](https://jestjs.io/)|
|`npm run test-cov-serve`|Runs `http-serve` to statically serve the unit test coverage reports|
|`npm run test-reprot-serve`|Runs `http-serve` to statically serve the unit test report|
|`npm run test-ci`|Runs the unit test cases using [Jest](https://jestjs.io/) and generates reports|
|`npm run test-watch`|Runs [Jest](https://jestjs.io/) with the `--watchAll` argument|
