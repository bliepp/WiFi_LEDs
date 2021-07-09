// HTML PAGES
char html_index[] PROGMEM = R"(<!DOCTYPE html>
<html>
<head>
	<title>BACKLIGHT</title>

	<meta charset="utf-8">
	<meta name='viewport' content='width=device-width, initial-scale=0.3, maximum-scale=0.3,  user-scalable=0'>
	<link rel="shortcut icon" href="power.svg" />
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">

	<style type="text/css">
		* {
			box-sizing: border-box;
			margin: 0;
			padding: 0;

			font-family: "Open Sans", sans-serif;
		}

		body {
			text-align: center;
			color: #f6f6f6;
			background-color: #1a1a1a;
		}

		#wrapper {
			position: absolute;
			top: 50%; left: 50%;
			transform: translate(-50%, -50%);
		}

		h1 {font-size: 8em;}

		button {
			display: block;
			width: 100%;
			margin-top: 1em;
			padding: 1em;
			border: 0;
			border-radius: 0.25em;

			font-size: 6em;
			color: #1a1a1a;
			background-color: #f6f6f6;
		}

		button.active{
			background-color: #ffe625;
		}

		button svg, button img {
			height: 3em;
		}
	</style>
</head>
<body>
	<div id="wrapper">
		<h1>BACKLIGHT</h1>
		<button id="power" class="">
			<img src="power.svg" />
		</button>
		<button id="color">
			Select color
		</button>
	</div>

	<script type="text/javascript">
		let power = document.querySelector("button#power");

		function api_request(method, path){
			const xhttp = new XMLHttpRequest();
			xhttp.onload = function(){
				console.log("Inside");
				let data = JSON.parse(this.responseText);
				console.log(data);
				if (data.on){
					power.classList.add("active")
				} else {
					power.classList.remove("active");
				}
			}
			xhttp.open(method, path, true);
			xhttp.send();
		}

		window.addEventListener("load", function() { api_request("GET", "/api/status") })
		power.addEventListener("click", function() { api_request("PUT", "/api/toggle"); });
	</script>
</body>
</html>
)";


// ASSETS
char icon_power[] PROGMEM = R"(<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Generator: Adobe Illustrator 15.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<svg xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns="http://www.w3.org/2000/svg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:ns1="http://sozi.baierouge.fr" xmlns:cc="http://web.resource.org/cc/" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" id="Layer_1" enable-background="new 0 0 360 360" xml:space="preserve" viewBox="0 0 360 360" version="1.1" y="0px" x="0px">
<g>
	<path d="m265.57 72.483c-7.646-4.394-17.355-2.01-21.575 5.297-4.217 7.307-1.925 16.547 5.095 20.536l5.813 4.406c29.892 22.655 49.207 58.524 49.207 98.923 0 68.543-55.565 124.11-124.11 124.11-68.543 0-124.11-55.566-124.11-124.11 0-39.822 18.771-75.242 47.934-97.944l6.177-4.809c7.521-4.306 10.222-13.806 6.003-21.112s-13.923-9.693-21.566-5.303l-6.408 4.742c-38.083 28.184-62.784 73.409-62.784 124.43-0.004 85.46 69.282 154.75 154.75 154.75s154.75-69.287 154.75-154.76c0-51.011-24.696-96.232-62.772-124.42l-6.41-4.737z"/>
	<path d="m195.32 162.49c0 9.103-6.895 16.549-15.323 16.549s-15.324-7.446-15.324-16.549v-142.34c0-9.102 6.896-16.549 15.324-16.549 8.429 0 15.323 7.447 15.323 16.549v142.34z"/>
</g>
<metadata><rdf:RDF><cc:Work><dc:format>image/svg+xml</dc:format><dc:type rdf:resource="http://purl.org/dc/dcmitype/StillImage"/><cc:license rdf:resource="http://creativecommons.org/licenses/publicdomain/"/><dc:publisher><cc:Agent rdf:about="http://openclipart.org/"><dc:title>Openclipart</dc:title></cc:Agent></dc:publisher></cc:Work><cc:License rdf:about="http://creativecommons.org/licenses/publicdomain/"><cc:permits rdf:resource="http://creativecommons.org/ns#Reproduction"/><cc:permits rdf:resource="http://creativecommons.org/ns#Distribution"/><cc:permits rdf:resource="http://creativecommons.org/ns#DerivativeWorks"/></cc:License></rdf:RDF></metadata></svg>
)";
