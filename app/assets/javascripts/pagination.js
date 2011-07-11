$(function(){
	$("#posts .pagination a").live("click", function() {
	    $.getScript(this.href);
		return false;
	});
});