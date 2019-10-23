<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar is-dark" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="https://bulma.io">
            <asset:image src="grails.svg" alt="Grails Logo"/>
        </a>

        <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
        </div>

        <div class="navbar-end">
            <g:pageProperty name="page.nav"/>
        </div>
    </div>
</nav>

<div id="app">
    <g:layoutBody/>
</div>

<footer class="footer">
    <div class="content has-text-centered">
        <div class="columns">
            <div class="column">
                <a href="http://guides.grails.org" target="_blank" class="is-flex" style="justify-content: center; margin-bottom: 10px;">
                    <figure class="image is-96x96">
                        <asset:image src="advancedgrails.svg" alt="Grails Guides"/>
                    </figure>
                </a>
                <p><strong><a href="http://guides.grails.org" target="_blank">Grails Guides</a></strong></p>
                <p>Building your first Grails app? Looking to add security, or create a Single-Page-App? Check out the <a href="http://guides.grails.org" target="_blank">Grails Guides</a> for step-by-step tutorials.</p>

            </div>
            <div class="column">
                <a href="http://docs.grails.org" target="_blank" class="is-flex" style="justify-content: center; margin-bottom: 10px;">
                    <figure class="image is-96x96">
                        <asset:image src="documentation.svg" alt="Grails Documentation"/>
                    </figure>
                </a>
                <p><strong><a href="http://docs.grails.org" target="_blank">Documentation</a></strong></p>
                <p>Ready to dig in? You can find in-depth documentation for all the features of Grails in the <a href="http://docs.grails.org" target="_blank">User Guide</a>.</p>

            </div>
            <div class="column">
                <a href="https://grails-slack.cfapps.io" target="_blank" class="is-flex" style="justify-content: center; margin-bottom: 10px;">
                    <figure class="image is-96x96">
                        <asset:image src="slack.svg" alt="Grails Slack"/>
                    </figure>
                </a>
                <p><strong><a href="https://grails-slack.cfapps.io" target="_blank">Join the Community</a></strong></p>
                <p>Get feedback and share your experience with other Grails developers in the community <a href="https://grails-slack.cfapps.io" target="_blank">Slack channel</a>.</p>
            </div>
        </div>
    </div>
</footer>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
