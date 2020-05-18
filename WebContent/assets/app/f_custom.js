/**
 * Facebook SignIn
 */
window.fbAsyncInit = function() {
	FB.init({
		appId : '1866878783458724',
		xfbml : true,
		version : 'v4.0'
	});
	FB.AppEvents.logPageView();
};
