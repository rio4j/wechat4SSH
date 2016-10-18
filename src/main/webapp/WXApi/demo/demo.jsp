<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
  <meta name="description" content="A basic demo of Cropper.">
  <meta name="keywords" content="HTML, CSS, JS, JavaScript, jQuery plugin, image cropping, image crop, image move, image zoom, image rotate, image scale, front-end, frontend, web development">
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
  <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
  <![endif]-->

  <!-- Header -->
 <!--  <header class="navbar navbar-static-top docs-header" id="top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-target="#navbar-collapse" data-toggle="collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="./">Cropper</a>
      </div>
      <nav class="collapse navbar-collapse" id="navbar-collapse" role="navigation">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="https://github.com/fengyuanchen/cropper/blob/master/README.md">Docs</a></li>
          <li><a href="https://github.com/fengyuanchen/cropper">GitHub</a></li>
          <li><a href="https://fengyuanchen.github.io">More</a></li>
          <li><a href="http://chenfengyuan.com">About</a></li>
        </ul>
      </nav>
    </div>
  </header> -->

  <!-- Jumbotron -->
  <div class="jumbotron docs-jumbotron">
    <div class="container">
      <h1>Cropper</h1>
      <p class="lead">A simple jQuery image cropping plugin.</p>
    </div>
  </div>
  <div>
<div id="hammer" class="hammer" style="background-color: blue; width: 300px; height: 300px;margin: 0 auto;"></div>
</div>
  <!-- Content -->
  <div class="container">
    <div class="row">
      <div class="col-md-9">
        <!-- <h3 class="page-header">Demo:</h3> -->
        <div class="img-container">
          <img id="image" src="assets/img/picture.jpg" alt="Picture">
        </div>
      </div>
      <div class="col-md-3">
        <!-- <h3 class="page-header">Preview:</h3> -->
        <div class="docs-preview clearfix">
          <div class="img-preview preview-lg"></div>
          <div class="img-preview preview-md"></div>
          <div class="img-preview preview-sm"></div>
          <div class="img-preview preview-xs"></div>
        </div>

        <!-- <h3 class="page-header">Data:</h3> -->
        <div class="docs-data">
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataX">X</label>
            <input type="text" class="form-control" id="dataX" placeholder="x">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataY">Y</label>
            <input type="text" class="form-control" id="dataY" placeholder="y">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataWidth">Width</label>
            <input type="text" class="form-control" id="dataWidth" placeholder="width">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataHeight">Height</label>
            <input type="text" class="form-control" id="dataHeight" placeholder="height">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataRotate">Rotate</label>
            <input type="text" class="form-control" id="dataRotate" placeholder="rotate">
            <span class="input-group-addon">deg</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataScaleX">ScaleX</label>
            <input type="text" class="form-control" id="dataScaleX" placeholder="scaleX">
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataScaleY">ScaleY</label>
            <input type="text" class="form-control" id="dataScaleY" placeholder="scaleY">
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-9 docs-buttons">
        <!-- <h3 class="page-header">Toolbar:</h3> -->
        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="move" title="Move">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
              <span class="fa fa-arrows"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;setDragMode&quot;, &quot;crop&quot;)">
              <span class="fa fa-crop"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="zoom" data-option="0.1" title="Zoom In">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;zoom&quot;, 0.1)">
              <span class="fa fa-search-plus"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="zoom" data-option="-0.1" title="Zoom Out">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;zoom&quot;, -0.1)">
              <span class="fa fa-search-minus"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="move" data-option="-10" data-second-option="0" title="Move Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;move&quot;, -10, 0)">
              <span class="fa fa-arrow-left"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="move" data-option="10" data-second-option="0" title="Move Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;move&quot;, 10, 0)">
              <span class="fa fa-arrow-right"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="-10" title="Move Up">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;move&quot;, 0, -10)">
              <span class="fa fa-arrow-up"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="10" title="Move Down">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;move&quot;, 0, 10)">
              <span class="fa fa-arrow-down"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="rotate" data-option="-45" title="Rotate Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;rotate&quot;, -45)">
              <span class="fa fa-rotate-left"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="rotate" data-option="45" title="Rotate Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;rotate&quot;, 45)">
              <span class="fa fa-rotate-right"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="scaleX" data-option="-1" title="Flip Horizontal">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;scaleX&quot;, -1)">
              <span class="fa fa-arrows-h"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="scaleY" data-option="-1" title="Flip Vertical">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;scaleY&quot;-1)">
              <span class="fa fa-arrows-v"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;crop&quot;)">
              <span class="fa fa-check"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="clear" title="Clear">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;clear&quot;)">
              <span class="fa fa-remove"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="disable" title="Disable">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;disable&quot;)">
              <span class="fa fa-lock"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="enable" title="Enable">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;enable&quot;)">
              <span class="fa fa-unlock"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="reset" title="Reset">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;reset&quot;)">
              <span class="fa fa-refresh"></span>
            </span>
          </button>
          <label class="btn btn-primary btn-upload" for="inputImage" title="Upload image file">
            <input type="file" class="sr-only" id="inputImage" name="file" accept="image/*">
            <span class="docs-tooltip" data-toggle="tooltip" title="Import image with Blob URLs">
              <span class="fa fa-upload"></span>
            </span>
          </label>
          <button type="button" class="btn btn-primary" data-method="destroy" title="Destroy">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;destroy&quot;)">
              <span class="fa fa-power-off"></span>
            </span>
          </button>
        </div>

        <div class="btn-group btn-group-crop">
          <button type="button" class="btn btn-primary" data-method="getCroppedCanvas">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getCroppedCanvas&quot;)">
              Get Cropped Canvas
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="getCroppedCanvas" data-option="{ &quot;width&quot;: 160, &quot;height&quot;: 90 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getCroppedCanvas&quot;, { width: 160, height: 90 })">
              160&times;90
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="getCroppedCanvas" data-option="{ &quot;width&quot;: 320, &quot;height&quot;: 180 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getCroppedCanvas&quot;, { width: 320, height: 180 })">
              320&times;180
            </span>
          </button>
        </div>

        <!-- Show the cropped image in modal -->
        <div class="modal fade docs-cropped" id="getCroppedCanvasModal" aria-hidden="true" aria-labelledby="getCroppedCanvasTitle" role="dialog" tabindex="-1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="getCroppedCanvasTitle">Cropped</h4>
              </div>
              <div class="modal-body"></div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <a class="btn btn-primary" id="download" href="javascript:void(0);" download="cropped.jpg">Download</a>
              </div>
            </div>
          </div>
        </div><!-- /.modal -->

        <button type="button" class="btn btn-primary" data-method="getData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getData&quot;)">
            Get Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="setData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;setData&quot;, data)">
            Set Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="getContainerData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getContainerData&quot;)">
            Get Container Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="getImageData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getImageData&quot;)">
            Get Image Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="getCanvasData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getCanvasData&quot;)">
            Get Canvas Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="setCanvasData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;setCanvasData&quot;, data)">
            Set Canvas Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="getCropBoxData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;getCropBoxData&quot;)">
            Get Crop Box Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="setCropBoxData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="$().cropper(&quot;setCropBoxData&quot;, data)">
            Set Crop Box Data
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="moveTo" data-option="0">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.moveTo(0)">
            0,0
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="zoomTo" data-option="1">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoomTo(1)">
            100%
          </span>
        </button>
        <button type="button" class="btn btn-primary" data-method="rotateTo" data-option="180">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotateTo(180)">
            180°
          </span>
        </button>
        <input type="text" class="form-control" id="putData" placeholder="Get data to here or set data with this value">

      </div><!-- /.docs-buttons -->

      <div class="col-md-3 docs-toggles">
        <!-- <h3 class="page-header">Toggles:</h3> -->
        <div class="btn-group btn-group-justified" data-toggle="buttons">
          <label class="btn btn-primary active">
            <input type="radio" class="sr-only" id="aspectRatio0" name="aspectRatio" value="1.7777777777777777">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 16 / 9">
              16:9
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio1" name="aspectRatio" value="1.3333333333333333">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 4 / 3">
              4:3
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio2" name="aspectRatio" value="1">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 1 / 1">
              1:1
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio3" name="aspectRatio" value="0.6666666666666666">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 2 / 3">
              2:3
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio4" name="aspectRatio" value="NaN">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: NaN">
              Free
            </span>
          </label>
        </div>

        <div class="btn-group btn-group-justified" data-toggle="buttons">
          <label class="btn btn-primary active">
            <input type="radio" class="sr-only" id="viewMode0" name="viewMode" value="0" checked>
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 0">
              VM0
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="viewMode1" name="viewMode" value="1">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 1">
              VM1
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="viewMode2" name="viewMode" value="2">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 2">
              VM2
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="viewMode3" name="viewMode" value="3">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 3">
              VM3
            </span>
          </label>
        </div>

        <div class="dropdown dropup docs-options">
          <button type="button" class="btn btn-primary btn-block dropdown-toggle" id="toggleOptions" data-toggle="dropdown" aria-expanded="true">
            Toggle Options
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" aria-labelledby="toggleOptions" role="menu">
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="responsive" checked>
                responsive
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="restore" checked>
                restore
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="checkCrossOrigin" checked>
                checkCrossOrigin
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="checkOrientation" checked>
                checkOrientation
              </label>
            </li>

            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="modal" checked>
                modal
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="guides" checked>
                guides
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="center" checked>
                center
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="highlight" checked>
                highlight
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="background" checked>
                background
              </label>
            </li>

            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="autoCrop" checked>
                autoCrop
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="movable" checked>
                movable
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="rotatable" checked>
                rotatable
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="scalable" checked>
                scalable
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="zoomable" checked>
                zoomable
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="zoomOnTouch" checked>
                zoomOnTouch
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="zoomOnWheel" checked>
                zoomOnWheel
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="cropBoxMovable" checked>
                cropBoxMovable
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="cropBoxResizable" checked>
                cropBoxResizable
              </label>
            </li>
            <li role="presentation">
              <label class="checkbox-inline">
                <input type="checkbox" name="toggleDragModeOnDblclick" checked>
                toggleDragModeOnDblclick
              </label>
            </li>
          </ul>
        </div><!-- /.dropdown -->
      </div><!-- /.docs-toggles -->
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
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="dist/cropper.js"></script>
  <script src="js/main.js"></script>
  <script src="js/bootstrap-slider.js"></script>
  <script src="js/hammer.js"></script>
  <script src="http://touch.code.baidu.com/touch-0.2.14.min.js"></script>
  <script>
  jQuery(function(){
	 /*  $('#image').cropper({ resizable: false}) */
	  var mySlider = new Slider("#slider",{ 
		 value:0,  
	      min: -360,  
	      max: 360,  
	      step: 50,
	    /*   formatter: function(value) {
	    	  $('#image').cropper("rotate",value)
	  		return value;
	  	} */
	 });
	/*  $("#slider").on('slideStop',function(oldValue,newValue){
		 $('#image').cropper("rotate",newValue)
		
	 }); */
	 mySlider.on("slide",function(evt){
		// $('#image').cropper("rotate",0)
		 $('#image').cropper("rotateTo",evt.value)
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
	     if(e.isFinal === 'true'){
		        angle = angle + rotation;
		    }
	   		//$('#hammer').html(writeObj(e))
	   		$('#hammer').html(e.isFinal)
	     stage.style.transform = 'rotate('+totalAngle+'deg)';
	     $('#image').cropper("rotateTo",totalAngle)
	 });  */
	var angle = 0;
	 touch.on('.img-container', 'touchstart', function(ev){
		    ev.startRotate();
		    ev.preventDefault();
		});

		touch.on('.img-container', 'rotate', function(ev){
			 console.log(flag);
			if(true){
			var totalAngle = angle + ev.rotation;
		    if(ev.fingerStatus === 'end'){
		        angle = angle + ev.rotation;
		    }
		   // this.style.webkitTransform = 'rotate(' + totalAngle  + 'deg)';
		    $('#image').cropper("rotateTo",totalAngle )}
		});
  });
  function writeObj(obj){ 
	    var description = ""; 
	    for(var i in obj){   
	        var property=obj[i];   
	        description+=i+" = "+property+"\n";  
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
