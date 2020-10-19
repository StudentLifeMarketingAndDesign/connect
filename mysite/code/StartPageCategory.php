<?php
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\ORM\DataObject;

class StartPageCategory extends DataObject {

	private static $db = array(
		'Title' => 'Text',
		'SortOrder' => 'Int',

	);

	private static $belongs_many_many = array(
		'Services' => 'StartPageService',

	);

	private static $has_one = array(
		'StartPage' => 'StartPage',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('SortOrder');
		$fields->removeByName('Services');
		$conf = GridFieldConfig_RelationEditor::create(10);
		//$conf->addComponent($sortable = new GridFieldSortableRows('SortOrder'));
		$fields->addFieldToTab('Root.Main', new GridField('Services', 'Services', $this->Services(), $conf));
		return $fields;
	}

}
