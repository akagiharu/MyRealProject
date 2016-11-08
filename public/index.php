<?php

try {

    //Register an autoloader
    $loader = new \Phalcon\Loader();
    $loader->registerDirs(array(
        '../apps/controllers/',
        '../apps/models/'
    ))->register();

    //Create a DI
    $di = new Phalcon\DI\FactoryDefault();

    //Setup the view component
    /*$di->set('view', function(){
        $view = new \Phalcon\Mvc\View();
        $view->setViewsDir('../app/views/');
        return $view;
    });*/
    // registering volt as a template engine
    $di->set('view', function() {
        $view = new \Phalcon\Mvc\View();

        $view->setViewsDir('../app/views/');

        $view->registerEngines(array(
            ".volt" => 'Phalcon\Mvc\View\Engine\Volt'
        )
        );

        return $view;
    });

    //Setup a base URI so that all generated URIs include the "tutorial" folder
    $di->set('url', function(){
        $url = new \Phalcon\Mvc\Url();
        $url->setBaseUri('/');
        return $url;
    });

    // Setup database connection
    $di->set('db', function() {
        return new Phalcon\Db\Adapter\Pdo\Mysql(array(
            "host" => "www.aulas.pt",
            "username" => "root",
            "password" => "nunixf",
            "dbname" => "aulasdb"
        ));
    });

    //Handle the request
    $application = new \Phalcon\Mvc\Application($di);
    echo $application->handle()->getContent();



} catch(\Phalcon\Exception $e) {
     echo "PhalconException: ", $e->getMessage();
}

?>
