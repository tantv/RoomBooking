//================= Room Booking System / https://github.com/neokoenig =======================--->
component extends="Wheels" hint="Global Controller"
{
	function init(boolean includeForgeryProtection=true) {
		// CSRF
		if(arguments.includeForgeryProtection){
			protectFromForgery();
		}
		// Check Permission for any given controller + action
		filters(through="checkPermissionAndRedirect");
		filters(through="f_getCalendars");

	}

	include "functions/auth.cfm";
	include "functions/filters.cfm";
	include "functions/dates.cfm";
	include "functions/locations.cfm";
	include "functions/utils.cfm";

}
