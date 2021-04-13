<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\TagField\TagField;

class BlogPostStartPageExtension extends DataExtension {

	private static $db = array(
		'HideFromStaffNews' => 'Boolean',

	);

	private static $many_many = array(
		'StartPages' => 'StartPage',
	);

	public function updateCMSFields(FieldList $fields) {

		$fields->addFieldToTab('Root.Main', TagField::create('StartPages', 'Department', StartPage::get())->setCanCreate(true)->setDescription('The post will show up on the above department start page(s)'), 'Content');
		//$fields->addFieldToTab('Root.PostOptions', CheckboxField::create('HideFromStaffNews', 'Hide this post from the general news feed')->setDescription('When checked, this post will only show up on the departmental start pages above'));

	}
	public function updateSettingsFields(FieldList $fields) {

	}
}