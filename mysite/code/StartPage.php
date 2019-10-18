<?php

use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\CMS\Model\SiteTree;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\GridField\GridFieldFilterHeader;
use SilverStripe\Forms\GridField\GridFieldSortableHeader;
use SilverStripe\Forms\GridField\GridFieldAddExistingAutocompleter;
class StartPage extends Page {

	private static $db = array(
		'MainButtonText' => 'Text',
		'MainButtonLink' => 'Varchar(255)'
	);

	private static $has_one = array(
	);

	private static $has_many = array(
		'Services' => 'StartPageService',
		'Categories' => 'StartPageCategory'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Content");
		$fields->removeByName("LayoutType");

		$fields->addFieldToTab('Root.Main', new TextField('MainButtonLink', 'Main button link (include https://)'));

		$fields->addFieldToTab('Root.Main', new TextField('MainButtonText', 'Main button text'));

		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));
		$conf->removeComponentsByType(GridFieldFilterHeader::class);
		$conf->removeComponentsByType(GridFieldAddExistingAutocompleter::class);

		$fields->addFieldToTab('Root.Main', new GridField('Categories', 'Categories', $this->Categories(), $conf));

		// $serviceConf = GridFieldConfig_RecordEditor::create(10);

		// $fields->addFieldToTab('Root.Main', new GridField('Services', 'Services', $this->Services(), $serviceConf));


		$fields->removeByName("Content");

		return $fields;
	}

	public function NewsPosts(){
		$holder = StudentLifeNewsHolder::create();

		return $holder->getBlogPostsFromFeed();

	}
}
