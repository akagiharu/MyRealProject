<?php

	class UserController extends \Phalcon\Mvc\Controller
	{

    protected function _getTranslation()
  	{

    //Ask browser what is the best language
    $language = $this->request->getBestLanguage();

    //Check if we have a translation file for that lang
    if (file_exists("app/messages/".$language.".php")) {
       require "app/messages/".$language.".php";
    } else {
       // fallback to some default
       require "app/messages/en-US.php";
    }

    //Return a translation object
    return new \Phalcon\Translate\Adapter\NativeArray(array(
       "content" => $messages
    ));

		}

		public function indexAction() {
			var_dump($this->getTranslation());
			die();
		}
	}

?>
