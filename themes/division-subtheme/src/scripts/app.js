

$('input#TopicSearchForm_SearchForm_Search').autocomplete({
	 serviceUrl: baseHref+'home/autoComplete',
	 deferRequestBy: 100,
	 triggerSelectOnValidInput: false,
	 minChars: 2,
	 autoSelectFirst: true,
	 appendTo: '#TopicSearchForm_SearchForm',
	 type: 'post',
	 onSelect: function (suggestion) {
		  $('#TopicSearchForm_SearchForm').submit();
	 }
});
