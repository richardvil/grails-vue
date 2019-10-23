## Description

Grails web project that integrate Webpack, Vue and Buefy to enhance the view layer. All the bootstrap dependencies has been removed  in order to use [bulma.io](https://bulma.io/) (with [buefy](https://buefy.org)). The project use the [gradle-node-plugin](https://github.com/srs/gradle-node-plugin) to run the npm scripts with the build process. All the bundled files generated are placed in the assets folder to allow asset-pipeline handle them in the *grails way*.
The main entry point for the frontend is in `src/main/webapp/app.js`. Here you can registry all your vue components and import the js and style dependencies, the current webpack configuration supports sass and css. The `main.gsp` has the element for attach the vue instance:

```
<div id="app">
    <g:layoutBody/>
</div>
```
In the `index.gsp` is the implementation of the example component:

```
<example-component></example-component>
```

## Run the app

1. Clone or download the repo
2. `./gradlew bootRun` 

![screenshoot](https://github.com/richardvil/grails-vue/blob/master/screenshot.png)
