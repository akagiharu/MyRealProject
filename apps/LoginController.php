<?php

	use \Phalcon\Mvc\Controller;

	class LoginController extends Controller
	{

		public $testing;
		public $url;

		public function indexAction()
		{
			$this->view->get_title = $this->get_title();
		}

    // criar uma função para criar o titulo da página
		public function get_title() {
		  return = "DaizGroup . Login - Only for you with great stuff";
		}

	}

?>
