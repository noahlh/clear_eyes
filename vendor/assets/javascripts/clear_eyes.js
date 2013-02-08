var ratio = (window.devicePixelRatio !== undefined ? window.devicePixelRatio : 1);
document.cookie = 'devicePixelRatio=' + ratio + (document.cookie != "" ? "; " + document.cookie : "");
