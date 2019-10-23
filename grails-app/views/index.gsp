<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<content tag="nav">
    <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
            Application Status
        </a>

        <div class="navbar-dropdown">
            <a class="navbar-item">
                Environment: ${grails.util.Environment.current.name}
            </a>
            <a class="navbar-item">
                App profile: ${grailsApplication.config.grails?.profile}
            </a>
            <a class="navbar-item">
                App version: <g:meta name="info.app.version"/>
            </a>
            <hr class="navbar-divider">
            <a class="navbar-item">
                Grails version: <g:meta name="info.app.grailsVersion"/>
            </a>
            <a class="navbar-item">
                Groovy version: ${GroovySystem.getVersion()}
            </a>
            <a class="navbar-item">
                JVM version: ${System.getProperty('java.version')}
            </a>
            <hr class="navbar-divider">
            <a class="navbar-item">
                Reloading active: ${grails.util.Environment.reloadingAgentEnabled}
            </a>
        </div>
    </div>

    <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
            Artefacts
        </a>

        <div class="navbar-dropdown">
            <a class="navbar-item">
                Controllers: ${grailsApplication.controllerClasses.size()}
            </a>
            <a class="navbar-item">
                Domains: ${grailsApplication.domainClasses.size()}
            </a>
            <a class="navbar-item">
                Services: ${grailsApplication.serviceClasses.size()}
            </a>
            <a class="navbar-item">
                Tag Libraries: ${grailsApplication.tagLibClasses.size()}
            </a>
        </div>
    </div>

    <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
            Installed Plugins
        </a>

        <div class="navbar-dropdown">
            <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                <a class="navbar-item">
                    ${plugin.name} - ${plugin.version}
                </a>
            </g:each>
        </div>
    </div>
</content>

<section class="hero is-light is-bold">
    <div class="hero-body">
        <div class="is-flex" style="justify-content: center;">
            <asset:image src="grails-cupsonly-logo-white.svg" style="height: 340px;"/>
        </div>
    </div>
</section>

<div class="container">
    <section class="has-text-centered" style="padding: 20px;">

        <example-component></example-component>

        <div class="title">Welcome to Grails</div>

        <p>
            Congratulations, you have successfully started your first Grails application! At the moment
            this is the default page, feel free to modify it to either redirect to a controller or display
            whatever content you may choose. Below is a list of controllers that are currently deployed in
            this application, click on each to execute its default action:
        </p>
        <br>
        <div>
            <div class="subtitle">Available Controllers:</div>
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li>
                        <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                    </li>
                </g:each>
            </ul>
        </div>
    </section>
</div>

</body>
</html>
