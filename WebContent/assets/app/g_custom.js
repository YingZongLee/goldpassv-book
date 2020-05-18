/**
 * Google SignIn
 */
gapi.load('auth2', function() {
	gapi.auth2.init({
		client_id : '278098405582-bq3qlntqedkftluk3jhphngg900lf0qo.apps.googleusercontent.com',
		scope : 'profile email'
	}).then(function() { renderButton(); });
});

function onSuccess(googleUser) {
	var profile = googleUser.getBasicProfile();
	console.log('ID: ' + profile.getId());
	console.log('Name: ' + profile.getName());
	console.log('Image URL: ' + profile.getImageUrl());
	console.log('Email: ' + profile.getEmail());
	console.log('id_token: ' + googleUser.getAuthResponse().id_token);
}

function onFailure(error) {
	console.log(error);
}

function renderButton() {
	gapi.signin2.render('google-signin', {
		'width' : 200,
		'height' : 36,
		'longtitle' : false,
		'theme' : 'light',
		'onsuccess' : onSuccess,
		'onfailure' : onFailure
	});
}