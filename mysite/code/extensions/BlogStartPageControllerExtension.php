<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\View\ArrayData;

class BlogStartPageControllerExtension extends DataExtension {

	private static $db = array(

	);

	private static $many_many = array(

	);
	private static $url_handlers = array(
		'department//$ID' => 'department',
	);

	private static $allowed_actions = array(
		'department',
	);
	public function department() {
		$deptID = $this->owner->getRequest()->param('ID');
		$dept = StartPage::get()->filter(array('URLSegment' => $deptID))->First();

		if ($dept) {
			$posts = new PaginatedList($dept->BlogPosts(), $this->owner->getRequest());
			$posts->setPageLength(10);

			$this->owner->blogPosts = $posts;

			$data = new ArrayData(array(
				'CurrentCategory' => $dept,
				'PaginatedList' => $posts,
			));

			//print_r($dept->Title);

			return $this->owner->customise($data)->renderWith(array('Blog_department', 'Page'));
		}

		$this->owner->httpError(404, 'Not Found');

		return null;
	}
}