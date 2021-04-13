<?php
use SilverStripe\Blog\Model\Blog;
use SilverStripe\Blog\Model\BlogPost;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldAddExistingAutocompleter;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\GridField\GridFieldFilterHeader;
use SilverStripe\Forms\TextField;
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
		'Categories' => 'StartPageCategory',
	);

	private static $belongs_many_many = array(
		'BlogPosts' => BlogPost::class,
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Content");
		$fields->removeByName("LayoutType");
		$fields->removeByName("Metadata");
		$fields->removeByName("Blocks");
		$fields->removeByName("SocialMediaSharing");
		$fields->addFieldToTab('Root.Main', new TextField('MainButtonLink', 'Main button link (include https://)'));

		$fields->addFieldToTab('Root.Main', new TextField('MainButtonText', 'Main button text'));

		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));
		$conf->removeComponentsByType(GridFieldFilterHeader::class);
		$conf->removeComponentsByType(GridFieldAddExistingAutocompleter::class);

		$fields->addFieldToTab('Root.Categories', new GridField('Categories', 'Categories', $this->Categories(), $conf));

		$serviceConf = GridFieldConfig_RelationEditor::create(10);

		$fields->addFieldToTab('Root.Main', new GridField('Services', 'Links', $this->Services(), $serviceConf));

		$fields->removeByName("Content");

		return $fields;
	}

	public function NewsPosts() {
		//$holder = StudentLifeNewsHolder::create();

		//return $holder->getBlogPostsFromFeed();

		$posts = BlogPost::get();
		return $posts;
	}

	public function MoreNewsLink() {

		$blog = Blog::get()->first();

		return $blog->Link('department/' . $this->URLSegment);

	}
}
