ratio = (window.devicePixelRatio !== undefined ? window.devicePixelRatio : 1);
oldRatio = $.cookie('devicePixelRatio');

if ((oldRatio !== undefined) && (oldRatio == ratio)) {
}
else {
  $.removeCookie('devicePixelRatio')
  $.cookie('devicePixelRatio', ratio);
	window.location.reload();
}
