<?php

use SilverStripe\Assets\File;
use SilverStripe\Control\Controller;
use SilverStripe\Control\Director;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\ReadonlyField;
use SilverStripe\ORM\DataExtension;

class FileShareLinkExtension extends DataExtension {

	private static $db = array(

	);

	private static $many_many = array(

	);

	public function updateFormFields(FieldList $fields, $record) {

		$controller = Controller::curr();
		$params = $controller->getURLParams();
		//print_r($params);

		if (!isset($params['ItemID'])) {

			if (isset($params['ID'])) {
				$id = $params['ID'];
			} else {
				return;
			}

		} else {
			$id = $params['ItemID'];
		}

		$file = File::get()->filter(array('ID' => $id))->First();
		$base = Director::absoluteBaseURL();
		if ($file) {
			$fields->push(ReadonlyField::create('FileShareLink', null, $base . 'Security/login?BackURL=' . $file->getAbsoluteURL())->setDescription('Please use the link above to share this file with logged in users if you\'ve restricted permissions to it.'));

		}

	}

}