<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataObject;
use SilverStripe\TagField\TagField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
class StartPageService extends DataObject {

	private static $db = array(
		'Title'   => 'Text',
		'Link'    => 'Text',
		'Content' => 'HTMLText',

	);

	private static $many_many = array(
		'Categories' => 'StartPageCategory',
	);

	private static $has_one = array(
		'StartPage' => 'StartPage'
	);

	public function getCMSFields() {
		$fields = new FieldList();
		$fields->removeByName('SortOrder');

		$parent = $this->StartPage();
		$tagField = TagField::create(
			'Categories',
			'Categories',
			$parent->Categories(),
			$this->Categories()
		)
			->setShouldLazyLoad(false) // tags should be lazy loaded
		->setCanCreate(false);     // new tag DataObjects can be created


		$fields->push(new TextField('Title'));
		$fields->push(new TextField('Link', 'Link (must include https://)'));
		$fields->push(new HTMLEditorField('Content'));
		$fields->push($tagField);




		return $fields;

	}
}
