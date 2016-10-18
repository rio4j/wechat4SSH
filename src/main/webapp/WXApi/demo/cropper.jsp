<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;"
	name="viewport" />
<meta name="description" content="A basic demo of Cropper.">
<meta name="keywords"
	content="HTML, CSS, JS, JavaScript, jQuery plugin, image cropping, image crop, image move, image zoom, image rotate, image scale, front-end, frontend, web development">
<meta name="author" content="Fengyuan Chen">
<title>Cropper</title>
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="dist/cropper.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/bootstrap-slider.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
	<div class="img-container">
		<img id="image" src="assets/img/picture.jpg" alt="Picture">
	</div>
	<div class="img-container1">
	<a class="a">A</a>
	<a class="b">B</a>
	<a class="c">C</a>
	<div id="b6"></div>
	<div>
		<img alt="" id="end" src="">
	</div>
	</div>
	<!-- Footer -->
	<footer class="docs-footer">
		<div class="container">
			<p class="heart"></p>
		</div>
	</footer>
	<div id="slider"></div>
	<!-- <div id="log" style=""></div>
<div id="hit" style="background-color: red; width: 200px; height: 200px;"></div> -->
	<!-- Scripts -->
	<script type="text/javascript">
	var flag = true;
	</script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="dist/cropper2.js"></script>
	<!-- <script src="js/main.js"></script> -->
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/hammer.js"></script>
	<script src="http://touch.code.baidu.com/touch-0.2.14.min.js"></script>
	<script>
		jQuery(function() {
			$('.a').click(function(){
				$('#b6').html($('#image').cropper("getCroppedCanvas").toDataURL())
				$('#end').attr('src',$('#image').cropper("getCroppedCanvas").toDataURL());
			});
			$('.b').click(function(){
				
			});
			$('.c').click(function(){
				
			});
			
			
			
			
			
			
			
			
			$('#image').cropper({
				resizable : false,
				dragCrop : false
			}).on({
				'cropmove.cropper': function (e) {
			    	//console.log("d");
			    	/* if(e.action =='se' || e.action =='e' || e.action =='w' || e.action =='s' || e.action =='n' || e.action =='sw' || e.action =='ne' || e.action =='nw' || e.action =='all'  )
			    		flag = false; */
			      console.log(e.type, e.action,flag);
			    },
			    'cropend.cropper': function (e) {
			    	//console.log("e");
			    	//flag = true;
			      console.log(e.type, e.action);
			    },
			    'cropstart.cropper': function (e) {
			    	//console.log("c");
			    		
			      console.log(e.type, e.action);
			    },
			});
			var mySlider = new Slider("#slider", {
				value : 0,
				min : -360,
				max : 360,
				step : 50,
			/*   formatter: function(value) {
				  $('#image').cropper("rotate",value)
				return value;
			} */
			});
			/*  $("#slider").on('slideStop',function(oldValue,newValue){
				 $('#image').cropper("rotate",newValue)
				
			 }); */
			mySlider.on("slide", function(evt) {
				// $('#image').cropper("rotate",0)
				$('#image').cropper("rotate", evt.value)
			});
			/*  $("#image1").cropper({
				    aspectRatio: 16/9,
				    modal: false,
				    preview: ".extra-preview",
				    done: function(data) {
				        console.log(data);
				    }
				}); */
			/* // Without JQuery
			var slider = new Slider('#ex5'); */

		/* 	var angle = 0;
			// get a reference to an element
			var stage = document.getElementById('hammer');

			// create a manager for that element
			var mc = new Hammer.Manager(stage);

			// create a recognizer
			var Rotate = new Hammer.Rotate();

			// add the recognizer
			mc.add(Rotate);

			// subscribe to events
			mc.on('rotate', function(e) {
				// do something cool
				var rotation = Math.round(e.rotation);
				var totalAngle = angle + rotation;
				if (e.isFinal === 'true') {
					angle = angle + rotation;
				}
				//$('#hammer').html(writeObj(e))
				$('#hammer').html(e.isFinal)
				stage.style.transform = 'rotate(' + totalAngle + 'deg)';
				$('#image').cropper("rotateTo", totalAngle)
			}); */

			var angle = 0;
			 touch.on('.img-container', 'touchstart', function(ev){
				 flag =true;
				    ev.startRotate();
				    ev.preventDefault();
				});

				touch.on('.img-container', 'rotate', function(ev){
					if(true)
					var totalAngle = angle + ev.rotation;
				    if(ev.fingerStatus === 'end'){
				        angle = angle + ev.rotation;
				    }
				   // this.style.webkitTransform = 'rotate(' + totalAngle  + 'deg)';
				    $('#image').cropper("rotate",totalAngle )
				});
				touch.on('.img-container', 'touchend', function(ev){
				  flag =false;
				});
		});
		function writeObj(obj) {
			var description = "";
			for ( var i in obj) {
				var property = obj[i];
				description += i + " = " + property + "\n";
			}
			return description;
		}
	</script>
	<!--  <script type="text/javascript">




  var reqAnimationFrame = (function () {

      return window[Hammer.prefixed(window, 'requestAnimationFrame')] || function (callback) {

          window.setTimeout(callback, 1000 / 60);

      };

  })();



  var log = document.querySelector("#log");

  var el = document.querySelector("#hit");



  var START_X = Math.round((window.innerWidth - el.offsetWidth) / 2);

  var START_Y = Math.round((window.innerHeight - el.offsetHeight) / 2);



  var ticking = false;

  var transform;

  var timer;



  var mc = new Hammer.Manager(el);



  mc.add(new Hammer.Pan({ threshold: 0, pointers: 0 }));



  mc.add(new Hammer.Swipe()).recognizeWith(mc.get('pan'));

  mc.add(new Hammer.Rotate({ threshold: 0 })).recognizeWith(mc.get('pan'));

  mc.add(new Hammer.Pinch({ threshold: 0 })).recognizeWith([mc.get('pan'), mc.get('rotate')]);



  mc.add(new Hammer.Tap({ event: 'doubletap', taps: 2 }));

  mc.add(new Hammer.Tap());



  mc.on("panstart panmove", onPan);

  mc.on("rotatestart rotatemove", onRotate);

  mc.on("pinchstart pinchmove", onPinch);

  mc.on("swipe", onSwipe);

  mc.on("tap", onTap);

  mc.on("doubletap", onDoubleTap);



  mc.on("hammer.input", function(ev) {

      if(ev.isFinal) {

          resetElement();

      }

  });





  function resetElement() {

      el.className = 'animate';

      transform = {

          translate: { x: START_X, y: START_Y },

          scale: 1,

          angle: 0,

          rx: 0,

          ry: 0,

          rz: 0

      };



      requestElementUpdate();



      if (log.textContent.length > 2000) {

          log.textContent = log.textContent.substring(0, 2000) + "...";

      }

  }



  function updateElementTransform() {

      var value = [

                  'translate3d(' + transform.translate.x + 'px, ' + transform.translate.y + 'px, 0)',

                  'scale(' + transform.scale + ', ' + transform.scale + ')',

                  'rotate3d('+ transform.rx +','+ transform.ry +','+ transform.rz +','+  transform.angle + 'deg)'

      ];



      value = value.join(" ");

      el.textContent = value;

      el.style.webkitTransform = value;

      el.style.mozTransform = value;

      el.style.transform = value;

      ticking = false;

  }



  function requestElementUpdate() {

      if(!ticking) {

          reqAnimationFrame(updateElementTransform);

          ticking = true;

      }

  }



  function logEvent(str) {

      //log.insertBefore(document.createTextNode(str +"\n"), log.firstChild);

  }



  function onPan(ev) {

      el.className = '';

      transform.translate = {

          x: START_X + ev.deltaX,

          y: START_Y + ev.deltaY

      };



      requestElementUpdate();

      logEvent(ev.type);

  }



  var initScale = 1;

  function onPinch(ev) {

      if(ev.type == 'pinchstart') {

          initScale = transform.scale || 1;

      }



      el.className = '';

      transform.scale = initScale * ev.scale;



      requestElementUpdate();

      logEvent(ev.type);

  }



  var initAngle = 0;

  function onRotate(ev) {

      if(ev.type == 'rotatestart') {

          initAngle = transform.angle || 0;

      }



      el.className = '';

      transform.rz = 1;

      transform.angle = initAngle + ev.rotation;

      requestElementUpdate();

      logEvent(ev.type);

  }



  function onSwipe(ev) {

      var angle = 50;

      transform.ry = (ev.direction & Hammer.DIRECTION_HORIZONTAL) ? 1 : 0;

      transform.rx = (ev.direction & Hammer.DIRECTION_VERTICAL) ? 1 : 0;

      transform.angle = (ev.direction & (Hammer.DIRECTION_RIGHT | Hammer.DIRECTION_UP)) ? angle : -angle;



      clearTimeout(timer);

      timer = setTimeout(function () {

          resetElement();

      }, 300);

      requestElementUpdate();

      logEvent(ev.type);

  }



  function onTap(ev) {

      transform.rx = 1;

      transform.angle = 25;



      clearTimeout(timer);

      timer = setTimeout(function () {

          resetElement();

      }, 200);

      requestElementUpdate();

      logEvent(ev.type);

  }



  function onDoubleTap(ev) {

      transform.rx = 1;

      transform.angle = 80;



      clearTimeout(timer);

      timer = setTimeout(function () {

          resetElement();

      }, 500);

      requestElementUpdate();

      logEvent(ev.type);

  }



  resetElement();



  </script> -->
</body>
</html>
