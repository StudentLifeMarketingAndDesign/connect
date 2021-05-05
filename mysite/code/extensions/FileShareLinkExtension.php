<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;

class FileShareLinkExtension extends DataExtension {

	private static $db = array(

	);

	private static $many_many = array(

	);

	public function updateFormFields(FieldList $fields, $record) {

		$id = $record->urlParams['ItemID'];

		// $fields->push(ReadonlyField::create('FileShareLink', null, 'https://connect.studentlife.uiowa.edu/Security/login?BackURL=https://connect.studentlife.uiowa.edu/admin/assets/show/0/edit/' . $id)->setDescription('Please use the link above to share this file with logged in users if you\'ve restricted permissions to it.'));
		// print_r('updateGetBlogPosts');

	}

}