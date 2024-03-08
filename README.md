# Example repo: Frontend Development Code Quality - What’s Good Enough?

Follow these blog posts related to this repo:

* [Frontend Development Code Quality - What's Good Enough?](https://dholmes/co.uk/blog/frontend-development-code-quality/)
* [A Simple Docker Tagging Strategy](https://dholmes.co.uk/blog/simple-docker-tagging-strategy/)

A simple "[Hello World](https://hello.dholmes.co.uk)" application.

![hello-world](https://user-images.githubusercontent.com/1830123/137368817-6215896d-c379-4582-97f3-53aad8574986.png)

Remotes:

1. [Azure DevOps](https://dev.azure.com/codecupltd/DesHolmes/_git/dholmes.co.uk-blog-frontend-code-quality-example)
2. [GitHub](https://github.com/desholmes/dholmes.co.uk-blog-frontend-code-quality-example)
3. [GitLab](https://gitlab.com/codecupltd/dholmes.co.uk-blog-frontend-code-quality-example)

This project uses:

1. [JavaScript](https://en.wikipedia.org/wiki/JavaScript)
2. [Node v20.9.0 (npm v10.1.0)](https://nodejs.org/en/)
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

### NPM

|Command|Description|
|---|---|
|`npm run clean`|Cleans the [./dist](./dist) directory|
|`npm run build`|Runs `npm run clean` and `parcel build`|
|`npm run build:serve`|Runs `http-server dist/` to statically serve the build in the [./dist](./dist) directory|
|`npm run lint`|Runs [ESLint](https://eslint.org/) with 0 warnings argument|
|`npm run lint:fix`|Runs [ESLint](https://eslint.org/) with 0 warnings and `--fix` arguments|
|`npm run prettier`|Runs [Prettier](https://prettier.io/) with `--check` argument|
|`npm run prettier:fix`|Runs [Prettier](https://prettier.io/) with `--write` argument|
|`npm run prettier-lint:fix`|Runs `prettier-fix` and `lint-fix` NPM scripts|
|`npm start`|Runs a local development server using the [Parcel Bundler](https://parceljs.org/)|
|`npm test`|Runs the unit test cases using [Jest](https://jestjs.io/)|
|`npm run test:cov-serve`|Runs `http-serve` to statically serve the unit test coverage reports|
|`npm run test:report-serve`|Runs `http-serve` to statically serve the unit test report|
|`npm run test:ci`|Runs the unit test cases using [Jest](https://jestjs.io/) and generates reports|
|`npm run test:watch`|Runs [Jest](https://jestjs.io/) with the `--watchAll` argument|

## Docker Using Make

|Command|Description|
|---|---|
|`make build`|Uses Docker build to create an with a tag image based on the version in package.json|
|`make run`|Runs the built Docker image as a container, viewable at [localhost:5001](http://localhost:5001)|
|`make stop`|Stops the Docker container|

---

## Credits

* [Des Holmes: Technical Leadership & Product Development](https://dholmes.co.uk)
  * [About](https://dholmes.co.uk/), [Blog](https://dholmes.co.uk/blog)
  * **Skills & knowledge**: [Technical Leadership](https://dholmes.co.uk/tags/technical-leadership), [Technical Delivery](https://dholmes.co.uk/tags/technical-delivery), [Product Development](https://dholmes.co.uk/tags/product-development), [SaaS](https://dholmes.co.uk/tags/saas), [DevOps](https://dholmes.co.uk/tags/devops), [Azure Public Cloud](https://dholmes.co.uk/skills)
  * **Job Titles**: [CTO](https://dholmes.co.uk/tags/cto), [VP Engineering](https://dholmes.co.uk/tags/vp-engineering), [Head of DevOps](https://dholmes.co.uk/tags/devops), [Technical Product Owner](https://dholmes.co.uk/tags/technical-product-owner)
  * **Related Posts**:
    * [Working with Des Holmes](https://dholmes.co.uk/testimonials/)
    * [Managing Technical Debt: A Startup Founder’s Guide](https://dholmes.co.uk/blog/managing-technical-debt-a-startup-founders-guide/)
    * [Making Your Deployments Boring: What’s Good Enough?](https://dholmes.co.uk/blog/making-your-deployments-boring-whats-good-enough/)
