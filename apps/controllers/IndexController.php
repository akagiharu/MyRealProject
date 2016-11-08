<?php

    use \Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    public $testing;
    public $url;

    public function indexAction()
    {
        $this->view->get_title = $this->get_title();
        $this->view->getActionName();
    }

    public function get_title()
    {
        return "DaizGroup - Only for you with great stuff";
    }
}
