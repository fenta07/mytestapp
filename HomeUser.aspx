<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="HomeUser.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="SliderContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- it works the same with all jquery version from 1.3.1 to 2.0.3 -->
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (39KB) or jssor.sliderc.mini.js (31KB, with caption, no slideshow) or jssor.sliders.mini.js (26KB, no caption, no slideshow) instead for release -->
    <!-- jssor.slider.mini.js = jssor.sliderc.mini.js = jssor.sliders.mini.js = (jssor.core.js + jssor.utils.js + jssor.slider.js) -->
    <script type="text/javascript" src="js/jssor.core.js"></script>
    <script type="text/javascript" src="js/jssor.utils.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            //Reference http://www.jssor.com/developement/slider-with-slideshow.html
            //Reference http://www.jssor.com/developement/tool-slideshow-transition-viewer.html

            var _SlideshowTransitions = [
            //Fade Fly in R
            {$Duration: 1200, $During: { $Left: [0.3, 0.7] }, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2, $Outside: true }
            //Fade Fly out L
            , { $Duration: 1200, $SlideOut: true, $FlyDirection: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2, $Outside: true }
            ];

            //Reference http://www.jssor.com/developement/slider-with-caption.html
            //Reference http://www.jssor.com/developement/reference-ui-definition.html#captiondefinition
            //Reference http://www.jssor.com/developement/tool-caption-transition-viewer.html

            var _CaptionTransitions = [];
            _CaptionTransitions["L"] = { $Duration: 800, $FlyDirection: 1, $Easing: $JssorEasing$.$EaseInCubic };
            _CaptionTransitions["R"] = { $Duration: 800, $FlyDirection: 2, $Easing: $JssorEasing$.$EaseInCubic };
            _CaptionTransitions["T"] = { $Duration: 800, $FlyDirection: 4, $Easing: $JssorEasing$.$EaseInCubic };
            _CaptionTransitions["B"] = { $Duration: 800, $FlyDirection: 8, $Easing: $JssorEasing$.$EaseInCubic };
            _CaptionTransitions["TL"] = { $Duration: 800, $FlyDirection: 5, $Easing: $JssorEasing$.$EaseInCubic };
            _CaptionTransitions["TR"] = { $Duration: 800, $FlyDirection: 6, $Easing: $JssorEasing$.$EaseInCubic };
            _CaptionTransitions["BL"] = { $Duration: 800, $FlyDirection: 9, $Easing: $JssorEasing$.$EaseInCubic };
            _CaptionTransitions["BR"] = { $Duration: 800, $FlyDirection: 10, $Easing: $JssorEasing$.$EaseInCubic };

            _CaptionTransitions["CLIP|LR"] = { $Duration: 600, $Clip: 3, $Easing: $JssorEasing$.$EaseInOutCubic };
            _CaptionTransitions["MCLIP|L"] = { $Duration: 600, $Clip: 1, $Move: true, $Easing: $JssorEasing$.$EaseInOutCubic };
            _CaptionTransitions["LISTH|L"] = { $Duration: 1000, $Clip: 1, $FlyDirection: 1, $Easing: $JssorEasing$.$EaseInOutCubic, $ScaleHorizontal: 0.8, $ScaleClip: 0.8, $During: { $Left: [0.4, 0.6], $Clip: [0, 0.4]} };
            _CaptionTransitions["WAVE|L"] = { $Duration: 1300, $FlyDirection: 5, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $ScaleVertical: 0.3, $Round: { $Top: 2.5} };
            _CaptionTransitions["JUMPDN|R"] = { $Duration: 1000, $FlyDirection: 6, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutJump }, $ScaleHorizontal: 0.6, $ScaleVertical: 0.4, $Round: { $Top: 1.5} };
            _CaptionTransitions["DDG|TR"] = { $Duration: 1200, $Clip: 15, $FlyDirection: 6, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Clip: $JssorEasing$.$EaseSwing }, $ScaleHorizontal: 0.3, $ScaleVertical: 0.3, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 0.8} };
            _CaptionTransitions["DODGEDANCE|L"] = { $Duration: 1200, $Clip: 15, $FlyDirection: 9, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Clip: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.3, $ScaleVertical: 0.3, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 2.5} };
            _CaptionTransitions["FLUTTER|L"] = { $Duration: 600, $FlyDirection: 9, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.1, $Opacity: 2, $Round: { $Top: 1.3} };
            _CaptionTransitions["TORTUOUS|VB"] = { $Duration: 1200, $Clip: 15, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseOutWave, $Clip: $JssorEasing$.$EaseOutCubic }, $ScaleVertical: 0.2, $During: { $Top: [0, 0.7] }, $Round: { $Top: 1.3} };
            _CaptionTransitions["FADE"] = { $Duration: 600, $Opacity: 2 };
            _CaptionTransitions["ZMF|10"] = { $Duration: 600, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 };
            _CaptionTransitions["RTT|10"] = { $Duration: 600, $Zoom: 11, $Rotate: true, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} };
            _CaptionTransitions["RTTL|BR"] = { $Duration: 600, $Zoom: 11, $Rotate: true, $FlyDirection: 10, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Top: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $ScaleHorizontal: 0.6, $ScaleVertical: 0.6, $Opacity: 2, $Round: { $Rotate: 0.8} };

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 0,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, default value is 3

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, direction navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, default value is 1
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                },

                $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                    $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                    $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                    $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                    $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                },

                $NavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $ActionMode: 3,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $Lanes: 2,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10                                    //[Optional] Vertical space between each item in pixel, default value is 0
                },

                $DirectionNavigatorOptions: {
                    $Class: $JssorDirectionNavigator$,              //[Requried] Class to create direction navigator instance
                    $ChanceToShow: 1                                //[Required] 0 Never, 1 Mouse Over, 2 Always
                },

                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $ActionMode: 0,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $DisableDrag: true,                             //[Optional] Disable drag or not, default value is false
                    $Orientation: 2                                 //[Optional] Orientation to arrange thumbnails, 1 horizental, 2 vertical, default value is 1
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$SetScaleWidth(Math.min(parentWidth, 600));
                else
                    window.setTimeout(ScaleSlider, 30);
            }

            ScaleSlider();

            if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                $(window).bind('resize', ScaleSlider);
            }
            //responsive code end
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles (except 'top', 'left', 'width' and 'height') to css file or css block. -->
    <div id="slider1_container" style="position: relative; width: 600px; height: 300px;z-index:0;">
        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                background-color: #000; top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
            <div style="position: absolute; display: block; background: url(Image/loading.gif) no-repeat center center;
                top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
        </div>
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px;
            height: 300px; overflow: hidden;">
            <div>
                <a href="Registration.aspx">
                    <img u="image" src="Image/01.jpg" width="750px" /></a>
                <div u="caption" t="CLIP|LR" style="position: absolute; top: 135px; left: 100px;
                    width: 400px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                </div>
            </div>
            <div>
                <img u="image" src="Image/02.jpg" />
                <div u="thumb">
                    Do you know this is text format thumbnail?</div>
                <div u="caption" t="MCLIP|L" style="position: absolute; top: 105px; left: 20px; width: 400px;
                    height: 30px; color: Green; font-size: 26px; line-height: 30px; text-align: center;
                    font-weight: bold;">
                    50% OFF
                </div>
                <div u="caption" t="LISTH|L" style="position: absolute; top: 165px; left: 100px;
                    width: 400px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                </div>
            </div>
            <div>
                <img u="image" src="Image/03.jpg" />
                <div u="thumb">
                    Do you notice the navigator is in multiline?</div>
                <div u="caption" t="WAVE|L" t2="T" style="position: absolute; top: 135px; left: 450px;
                    width: 100px; height: 30px; color: Green; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    70% OFF
                </div>
                <div u="caption" t="WAVE|L" t2="T" d="-1150" style="position: absolute; top: 135px;
                    left: 250px; width: 100px; height: 30px; color: Green; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    70% OFF
                </div>
                <div u="caption" t="WAVE|L" t2="T" d="-1150" style="position: absolute; top: 135px;
                    left: 50px; width: 100px; height: 30px; color: Green; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    70% OFF
                </div>
            </div>
            <div>
                <img u="image" src="Image/04.jpg" />
                <div u="thumb">
                    Do you like navigator to act by mouse hover?</div>
                <div u="caption" t="JUMPDN|R" t2="B" style="position: absolute; top: 135px; left: 50px;
                    width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    JUMPDN|R
                </div>
                <div u="caption" t="JUMPDN|R" t2="B" d="-850" style="position: absolute; top: 135px;
                    left: 250px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    JUMPDN|R
                </div>
                <div u="caption" t="JUMPDN|R" t2="B" d="-850" style="position: absolute; top: 135px;
                    left: 450px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    JUMPDN|R
                </div>
            </div>
            <div>
                <img u="image" src="Image/05.jpg" />
                <div u="thumb">
                    Do you notice it scales while window resize?</div>
                <div u="caption" t="L" style="position: absolute; top: 20px; left: 20px; width: 200px;
                    height: 30px; color: #ffffff; font-size: 20px; line-height: 30px;">
                    What about caption?
                </div>
                <div u="caption" t="CLIP|LR" style="position: absolute; top: 135px; left: 100px;
                    width: 400px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    This is 'CLIP|LR' caption transition
                </div>
            </div>
            <div>
                <img u="image" src="Image/06.jpg" />
                <div u="thumb">
                    Do you know this is text format thumbnail?</div>
                <div u="caption" t="MCLIP|L" style="position: absolute; top: 105px; left: 100px;
                    width: 400px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    This is 'MCLIP|L' caption transition
                </div>
                <div u="caption" t="LISTH|L" style="position: absolute; top: 165px; left: 100px;
                    width: 400px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    This is 'LISTH|L' caption transition
                </div>
            </div>
            <div>
                <img u="image" src="Image/07.jpg" />
                <div u="thumb">
                    Do you notice the navigator is in multiline?</div>
                <div u="caption" t="WAVE|L" t2="T" style="position: absolute; top: 135px; left: 450px;
                    width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    WAVE|L
                </div>
                <div u="caption" t="WAVE|L" t2="T" d="-1150" style="position: absolute; top: 135px;
                    left: 250px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    WAVE|L
                </div>
                <div u="caption" t="WAVE|L" t2="T" d="-1150" style="position: absolute; top: 135px;
                    left: 50px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    WAVE|L
                </div>
            </div>
            <div>
                <img u="image" src="Image/08.jpg" />
                <div u="thumb">
                    Do you like navigator to act by mouse hover?</div>
                <div u="caption" t="JUMPDN|R" t2="B" style="position: absolute; top: 135px; left: 50px;
                    width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    JUMPDN|R
                </div>
                <div u="caption" t="JUMPDN|R" t2="B" d="-850" style="position: absolute; top: 135px;
                    left: 250px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    JUMPDN|R
                </div>
                <div u="caption" t="JUMPDN|R" t2="B" d="-850" style="position: absolute; top: 135px;
                    left: 450px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px;
                    text-align: center;">
                    JUMPDN|R
                </div>
            </div>
        </div>
        <!-- ThumbnailNavigator Skin Begin -->
        <div u="thumbnavigator" class="slider1-T" style="position: absolute; bottom: 0px;
            left: 0px; height: 60px; width: 600px;">
            <div style="filter: alpha(opacity=40); opacity: 0.4; position: absolute; display: block;
                background-color: #ffffff; top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
            <!-- Thumbnail Item Skin Begin -->
            <div u="slides">
                <div u="prototype" style="position: absolute; width: 600px; height: 60px; top: 0;
                    left: 0;">
                    <thumbnailtemplate style="font-family: verdana; font-weight: normal; position: absolute;
                        width: 100%; height: 100%; top: 0; left: 0; color: #000; line-height: 60px; font-size: 20px;
                        padding-left: 10px;"></thumbnailtemplate>
                </div>
            </div>
            <!-- Thumbnail Item Skin End -->
        </div>
        <!-- ThumbnailNavigator Skin End -->
        <!-- Navigator Skin Begin -->
        <!-- jssor slider navigator skin 01 -->
        <style>
            /*
            .jssorn01 div           (normal)
            .jssorn01 div:hover     (normal mouseover)
            .jssorn01 .av           (active)
            .jssorn01 .av:hover     (active mouseover)
            .jssorn01 .dn           (mousedown)
            */
            .jssorn01 div, .jssorn01 div:hover, .jssorn01 .av
            {
                filter: alpha(opacity=70);
                opacity: .7;
                overflow: hidden;
                cursor: pointer;
                border: #000 1px solid;
            }
            .jssorn01 div
            {
                background-color: gray;
            }
            .jssorn01 div:hover, .jssorn01 .av:hover
            {
                background-color: #d3d3d3;
            }
            .jssorn01 .av
            {
                background-color: #fff;
            }
            .jssorn01 .dn, .jssorn01 .dn:hover
            {
                background-color: #555555;
            }
        </style>
        <!-- navigator container -->
        <div u="navigator" class="jssorn01" style="position: absolute; bottom: 16px; right: 10px;">
            <!-- navigator item prototype -->
            <div u="prototype" style="position: absolute; width: 12px; height: 12px;">
            </div>
        </div>
        <!-- Navigator Skin End -->
        <!-- Direction Navigator Skin Begin -->
        <style>
            /* jssor slider direction navigator skin 05 css */
            /*
            .jssord05l              (normal)
            .jssord05r              (normal)
            .jssord05l:hover        (normal mouseover)
            .jssord05r:hover        (normal mouseover)
            .jssord05ldn            (mousedown)
            .jssord05rdn            (mousedown)
            */
            .jssord05l, .jssord05r, .jssord05ldn, .jssord05rdn
            {
                position: absolute;
                cursor: pointer;
                display: block;
                background: url(Image/d17.png) no-repeat;
                overflow: hidden;
            }
            .jssord05l
            {
                background-position: -10px -40px;
            }
            .jssord05r
            {
                background-position: -70px -40px;
            }
            .jssord05l:hover
            {
                background-position: -130px -40px;
            }
            .jssord05r:hover
            {
                background-position: -190px -40px;
            }
            .jssord05ldn
            {
                background-position: -250px -40px;
            }
            .jssord05rdn
            {
                background-position: -310px -40px;
            }
            .style4
            {
                color: #FFFFFF;
            }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssord05l" style="width: 40px; height: 40px; top: 123px;
            left: 8px;"></span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssord05r" style="width: 40px; height: 40px; top: 123px;
            right: 8px"></span>
        <!-- Direction Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">jQuery Gallery</a>
        <!-- Trigger -->
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="text-align:center; color: #999966; background-color: #CCCCCC; width:825px;">
        <span class="style4">Mobile</span>
</h1>
    <div id="h">
        <div id="mobile">
            <asp:DataList ID="datamobile" runat="server" RepeatColumns="4" 
                DataKeyField="pkprodid" oneditcommand="Edit">
                <ItemTemplate>
                    <div style="width: 200px; height: 330px; -webkit-border-radius: 20px; -moz-border-radius: 20px;
                        border-radius: 20px; border: 2px solid #2E2E00; background: rgba(220,224,220,0.9);
                        -webkit-box-shadow: #FFFFFF 9px 9px 9px; -moz-box-shadow: #FFFFFF 9px 9px 9px;
                        box-shadow: #FFFFFF 9px 9px 9px;color:Black;">
                        <table cellpadding="5px" width="100%">
                            <tr>
                                <td align="center">
                                   <asp:Image ID="img" runat="server" Height="111px" Width="124px" ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' />                                
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("prodname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:LinkButton ID="txtmore" Text="More Details" ForeColor="Black" runat="server" 
                                        CommandName="Edit"></asp:LinkButton>
                                    &nbsp;</td>
                            </tr>
                             <tr>
                            <td>
                              <asp:Button ID="btnorder" runat="server" Text="ORDER NOW"  BackColor="green" ForeColor="white" Width="100px" Height="30px" />
                            </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div id="computer">
       <h1 style="text-align:center; color: #999966; background-color: #CCCCCC;width:825px;">
        <span class="style4">Computer</span>
</h1>
            <asp:DataList ID="datacomputer" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" onupdatecommand="Update" 
                DataKeyField="pkprodid">
                <ItemTemplate>
                    <div style="width: 200px; height: 330px; -webkit-border-radius: 20px; -moz-border-radius: 20px;
                        border-radius: 20px; border: 2px solid #2E2E00; background: rgba(220,224,220,0.9);
                        -webkit-box-shadow: #FFFFFF 9px 9px 9px; -moz-box-shadow: #FFFFFF 9px 9px 9px;
                        box-shadow: #FFFFFF 9px 9px 9px;color:Black;">
                              <table cellpadding="5px" width="100%">
                            <tr>
                                <td align="center">
                                   <asp:Image ID="img" runat="server" Height="111px" Width="124px" ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' />                                
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("prodname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:LinkButton ID="txtmore" Text="More Details" CommandName="Update" ForeColor="Black" runat="server"></asp:LinkButton>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                            <td>
                              <asp:Button ID="btnorder" runat="server" Text="ORDER NOW" />
                            </td>
                            </tr>
                        </table>
       
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div id="leptop">
            <h1 style="text-align:center; color: #999966; background-color: #CCCCCC; width:825px;">
        <span class="style4">Leptop</span>
</h1>
        <asp:DataList ID="dataleptop" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" DataKeyField="pkprodid" 
                onitemcommand="ItemCommand">
                <ItemTemplate>
                    <div style="width: 200px; height: 330px; -webkit-border-radius: 20px; -moz-border-radius: 20px;
                        border-radius: 20px; border: 2px solid #2E2E00; background: rgba(220,224,220,0.9);
                        -webkit-box-shadow: #FFFFFF 9px 9px 9px; -moz-box-shadow: #FFFFFF 9px 9px 9px;
                        box-shadow: #FFFFFF 9px 9px 9px;color:Black;">
                              <table cellpadding="5px" width="100%">
                            <tr>
                                <td align="center">
                                   <asp:Image ID="img" runat="server" Height="111px" Width="124px" ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' />                                
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("prodname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:LinkButton ID="txtmore" Text="More Details" ForeColor="Black" runat="server"></asp:LinkButton>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                            <td>
                                <asp:Button ID="btnorder" runat="server" Text="ORDER NOW" />
                            </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div id="Accessories">
            <h1 style="text-align:center; color: #999966; background-color: #CCCCCC; width:825px;">
        <span class="style4">Accesseries</span>
</h1>
            <asp:DataList ID="dataaccessories" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" DataKeyField="pkprodid" 
                ondeletecommand="Delete">
                <ItemTemplate>
                    <div style="width: 200px; height: 330px; -webkit-border-radius: 20px; -moz-border-radius: 20px;
                        border-radius: 20px; border: 2px solid #2E2E00; background: rgba(220,224,220,0.9);
                        -webkit-box-shadow: #FFFFFF 9px 9px 9px; -moz-box-shadow: #FFFFFF 9px 9px 9px;
                        box-shadow: #FFFFFF 9px 9px 9px;color:Black;">
                              <table cellpadding="5px" width="100%">
                            <tr>
                                <td align="center">
                                   <asp:Image ID="img" runat="server" Height="111px" Width="124px" ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' />                                
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("prodname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                <asp:LinkButton ID="txtmore" Text="More Details" CommandName="Delete" ForeColor="Black" runat="server"></asp:LinkButton>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                            <td>
                                <asp:Button ID="btnorder" runat="server" Text="ORDER NOW" />
                            </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
