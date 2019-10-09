<?php

use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\CMS\Model\SiteTree;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class StartPage extends Page {

	private static $db = array(
		'MainButtonText' => 'Text',
		'MainButtonLink' => 'Varchar(255)',

		

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

		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));

		$fields->addFieldToTab('Root.Main', new GridField('Categories', 'Categories', $this->Categories(), $conf));

		$serviceConf = GridFieldConfig_RecordEditor::create(10);

		$fields->addFieldToTab('Root.Main', new GridField('Services', 'Services', $this->Services(), $serviceConf));
		$fields->removeByName("Content");

		return $fields;
	}
}
