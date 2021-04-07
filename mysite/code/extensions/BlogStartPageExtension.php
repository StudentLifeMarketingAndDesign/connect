<?php

use SilverStripe\ORM\DataExtension;

class BlogStartPageExtension extends DataExtension {

	private static $db = array(

	);

	private static $many_many = array(

	);

	public function updateGetBlogPosts($posts) {

		print_r($posts);

	}

}