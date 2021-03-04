<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;
use SilverStripe\TagField\TagField;

class StartPageService extends DataObject {

	private static $db = array(
		'Title' => 'Text',
		'Link' => 'Text',
		'Content' => 'HTMLText',

	);

	private static $many_many = array(
		'Categories' => 'StartPageCategory',
	);
	private static $many_many_extraFields = array(
		'Categories' => array(
			'SortOrder' => 'Int',
		),
	);
	private static $has_one = array(
		'StartPage' => 'StartPage',
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
			->setCanCreate(true); // new tag DataObjects can be created

		$fields->push(new TextField('Title'));
		$fields->push($tagField);
		$fields->push(new TextField('Link', 'Link (must include https://)'));
		$fields->push(new HTMLEditorField('Content'));

		return $fields;

	}

	public function LinkDomain() {

		$url = $this->Link;
		$parsedUrl = array();
		$parsedUrl = parse_url($url);

		if (isset($parsedUrl['host'])) {
			return $parsedUrl['host'];
		}

	}

}
