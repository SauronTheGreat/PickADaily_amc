# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


# Layout Themes
LayoutTheme.create!(:name=>"1. FlatLand  (main:12)", :number=>1)
LayoutTheme.create!(:name=>"2. Bracket (header:12) (nav-panel:2 | main:10) (extra:2 | footer:10)", :number=>2)
LayoutTheme.create!(:name=>"3. Sandwich (header:3 | nav-panel:9) (main:12) (extra:2 | footer:10)", :number=>3)
LayoutTheme.create!(:name=>"4. Sliver ( (header)(nav-panel):2 | (main):10 )", :number=>4)
LayoutTheme.create!(:name=>"5. Toothy (header:12)((nav-panel)(extra):2 | (main):10 ) (footer:12)", :number=>5)
LayoutTheme.create!(:name=>"6. Trident (header:12)(nav-panel:3 | main:6 | extra:3) (footer:12)", :number=>6)
LayoutTheme.create!(:name=>"7. Pickadaily (header:12)(nav-panel:4 | (main:8) (extra:4 | footer:4))", :number=>7)


# Font Themes

FontTheme.create!(:name=>"Arial")
FontTheme.create!(:name=>"Arial Black")
FontTheme.create!(:name=>"Comic Sans MS")
FontTheme.create!(:name=>"Georgia")
FontTheme.create!(:name=>"Impact")
FontTheme.create!(:name=>"Times New Roman")
FontTheme.create!(:name=>"Verdana")
FontTheme.create!(:name=>"Trebuchet MS")

# Icon Themes

IconTheme.create!(:name=>"Blue and White Squares", :number=>"1")
IconTheme.create!(:name=>"Transparent Glass", :number=>"2")
IconTheme.create!(:name=>"Antique Copper Orbs", :number=>"3")
IconTheme.create!(:name=>"Green Glowing Orbs", :number=>"4")
IconTheme.create!(:name=>"Orange Glowing Orbs", :number=>"5")
IconTheme.create!(:name=>"Blue Glowing Orbs", :number=>"6")
IconTheme.create!(:name=>"Red Squares", :number=>"7")

# JQuery Themes

JqueryTheme.create!(:name=>"UI lightness", :number=>"1")
JqueryTheme.create!(:name=>"UI darkness", :number=>"2")
JqueryTheme.create!(:name=>"Smoothness", :number=>"3")
JqueryTheme.create!(:name=>"Start", :number=>"4")
JqueryTheme.create!(:name=>"Redmond", :number=>"5")
JqueryTheme.create!(:name=>"Sunny", :number=>"6")
JqueryTheme.create!(:name=>"Scarlet O'Hara'", :number=>"7")


# Home Page, Layout Page and Theme Page Initialization

Page.create!(:controller_name=>"welcome", :action_name=>"index")
PageLayout.create!(:page_id=>1, :layout_theme_id=>1, :font_theme_id=>1, :font_weight=>"normal", :font_size=>"12", :theme_active=>true)
Page.create!(:controller_name=>"color_themes", :action_name=>"edit")
Page.create!(:controller_name=>"page_layouts", :action_name=>"edit")
Page.create!(:controller_name=>"page_layouts", :action_name=>"new")
Page.create!(:controller_name=>"plugin_samples", :action_name=>"index")
PageLayout.create!(:page_id=>2, :layout_theme_id=>1, :font_theme_id=>1, :font_weight=>"normal", :font_size=>"12", :theme_active=>true)
PageLayout.create!(:page_id=>3, :layout_theme_id=>1, :font_theme_id=>1, :font_weight=>"normal", :font_size=>"12", :theme_active=>true)
PageLayout.create!(:page_id=>4, :layout_theme_id=>1, :font_theme_id=>1, :font_weight=>"normal", :font_size=>"12", :theme_active=>true)
PageLayout.create!(:page_id=>5, :layout_theme_id=>1, :font_theme_id=>1, :font_weight=>"normal", :font_size=>"12", :theme_active=>true)
ColorTheme.create!(:back_color=>"ffffff", :main_color=>"ffffff", :navigation_panel_color=>"aaffaa", :extra_panel_color=>"00bfbf", :footer_panel_color=>"ffd4aa", :highlight_color=>"ffffff", :text_color=>"000000", :header_color=>"ffaa56", :link_color=>"000000", :link_color_hover=>"000000", :icon_theme=>"7", :jquery_theme=>"7", :rounded_corners=>false)

# Plugin Samples

PluginSample.create!(:name=>"Equal-Height-Columns", :description=>"Equalize the heights of multiple columns", :script_markup=>"$('#column1, #column2, #column3').equalHeightColumns();", :html_markup=>"<div style='width:100%'><div id='column1' style='float:left;width:33%;background:red;border 1px solid darkred;'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dolor mi, rutrum nec molestie id, condimentum commodo elit. Quisque sodales imperdiet dolor, et elementum dolor viverra non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In hac habitasse platea dictumst.</div><div id='column2' style='background:blue;float:right;width:33%;border 1px solid darkblue;'>Cras pharetra eros non enim euismod consectetur. Nunc a eros in ligula ultricies porta. Nullam nisi ipsum, consectetur sit amet dignissim non, fermentum eget justo. Aliquam id nulla a elit varius porttitor egestas eu risus. Ut sed magna est. Maecenas id nunc et elit sagittis mattis eget nec libero. Donec adipiscing imperdiet dignissim. Aliquam ut pharetra libero. In mi enim, venenatis mollis convallis in, posuere cursus est.</div><div id='column3' style='background:grey;float:left;width:34%;border 1px solid darkred;'>Curabitur aliquet lectus a quam sagittis sit amet elementum mauris vestibulum. Mauris laoreet risus sed sem ullamcorper in rhoncus urna consequat. Aliquam aliquam elit ac urna blandit viverra. In hac habitasse platea dictumst. Donec ut tortor libero. Etiam bibendum pretium blandit. Sed lectus leo; commodo sed adipiscing ac, venenatis a leo</div></div>'")
PluginSample.create!(:name=>"jPicker", :description=>"A PopUp Color Picker", :script_markup=>"$('.color_picker').jPicker({window:{expandable: true}});", :html_markup=>" <div class='color_picker'> Color Picker </div>")
PluginSample.create!(:name=>"Slides", :description=>"A Simple Image Slider", :script_markup=>"$('#slides').slides({preload: true,preloadImage: 'orbit.png',play: 2500,pause: 2500,hoverPause: true,effect: 'slide, fade',crossfade: false,slideSpeed: 500,fadeSpeed: 500});", :html_markup=>"<div id='slides'><div class='slides_container' style='padding:20px'><div style='border:solid 3px black'><br/><br/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dolor mi, rutrum nec molestie id, condimentum commodo elit. Quisque sodales imperdiet dolor, et elementum dolor viverra non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In hac habitasse platea dictumst.</div><div style='border:solid 3px black'><br/><br/>Curabitur aliquet lectus a quam sagittis sit amet elementum mauris vestibulum. Mauris laoreet risus sed sem ullamcorper in rhoncus urna consequat. Aliquam aliquam elit ac urna blandit viverra. In hac habitasse platea dictumst. Donec ut tortor libero. Etiam bibendum pretium blandit. Sed lectus leo; commodo sed adipiscing ac, venenatis a leo</div></div><a href='#' class='prev' id='prev_button'><img src='../assets/arrow-prev.png' width='24' height='43' alt='Arrow Prev'></a><a href='#' class='next' id='next_button'><img src='../assets/arrow-next.png' width='24' height='43' alt='Arrow Next'></a></div><br/>", :lesson=>"<%= stylesheet_link_tag 'Slides' %>")
PluginSample.create!(:name=>"CSS-Mac-Dock-Menu", :description=>"A Mac OS style navigation Menu", :script_markup=>"$('#dock2').Fisheye({maxWidth: 60,items: 'a',itemsText: 'span',container: '.dock-container2',itemWidth: 40,proximity: 80,alignment : 'left',valign: 'bottom',halign : 'center'})", :html_markup=>"<div class='dock' id='dock2'><div class='dock-container2'><a class='dock-item2' href='#'><a class='dock-item2' href='#'><span>Home</span><img src='../assets/images/home.png' alt='home' /></a><a class='dock-item2' href='#'><span>Contact</span><img src='../assets/images/email.png' alt='contact' /></a><a class='dock-item2' href='#'><span>Portfolio</span><img src='../assets/images/portfolio.png' alt='portfolio' /></a><a class='dock-item2' href='#'><span>Music</span><img src='../assets/images/music.png' alt='music' /></a><a class='dock-item2' href='#'><span>Video</span><img src='../assets/images/video.png' alt='video' /></a><a class='dock-item2' href='#'><span>History</span><img src='../assets/images/history.png' alt='history' /></a><a class='dock-item2' href='#'><span>Calendar</span><img src='../assets/images/calendar.png' alt='calendar' /></a><a class='dock-item2' href='#'><span>Links</span><img src='../assets/images/link.png' alt='links' /></a><a class='dock-item2' href='#'><span>RSS</span><img src='../assets/images/rss.png' alt='rss' /></a><a class='dock-item2' href='#'><span>RSS2</span><img src='../assets/images/rss2.png' alt='rss' /></a></div></div>", :lesson=>"<%= stylesheet_link_tag 'CSS-Mac-Dock-Menu' %>")
PluginSample.create!(:name=>"SlideDownBox", :description=>"A Nifty Horizontal Menu", :script_markup=>"$('#sdt_menu > li').bind('mouseenter',function(){var $elem = $(this);$elem.find('img').stop(true).animate({'width':'170px','height':'170px','left':'0px'},400,'easeOutBack').andSelf().find('.sdt_wrap').stop(true).animate({'top':'140px'},500,'easeOutBack').andSelf().find('.sdt_active').stop(true).animate({'height':'170px'},300,function(){var $sub_menu = $elem.find('.sdt_box');if($sub_menu.length){var left = '170px';if($elem.parent().children().length == $elem.index()+1)left = '-170px';$sub_menu.show().animate({'left':left},200);}});}).bind('mouseleave',function(){var $elem = $(this);var $sub_menu = $elem.find('.sdt_box');if($sub_menu.length)$sub_menu.hide().css('left','0px');$elem.find('.sdt_active').stop(true).animate({'height':'0px'},300).andSelf().find('img').stop(true).animate({'width':'0px','height':'0px','left':'85px'},400).andSelf().find('.sdt_wrap').stop(true).animate({'top':'25px'},500);});", :html_markup=>"<br/><br/><br/><br/><br/><br/><div class='content'><ul id='sdt_menu' class='sdt_menu'><li><a href='#'><img src='../assets/images/2.jpg' alt=''/><span class='sdt_active'></span><span class='sdt_wrap'><span class='sdt_link'>About me</span><span class='sdt_descr'>Get to know me</span></span></a></li><li><a href='#'><img src='../assets/images/1.jpg' alt=''/><span class='sdt_active'></span><span class='sdt_wrap'><span class='sdt_link'>Portfolio</span><span class='sdt_descr'>My work</span></span></a><div class='sdt_box'><a href='#'>Websites</a><a href='#'>Illustrations</a><a href='#'>Photography</a></div></li><li><a href='#'><img src='../assets/images/3.jpg' alt=''/><span class='sdt_active'></span><span class='sdt_wrap'><span class='sdt_link'>Inspiration</span><span class='sdt_descr'>Where ideas get born</span></span></a></li><li><a href='#'><img src='../assets/images/4.jpg' alt=''/><span class='sdt_active'></span><span class='sdt_wrap'><span class='sdt_link'>Photos</span><span class='sdt_descr'>I like to photograph</span></span></a></li><li><a href='#'><img src='../assets/images/6.jpg' alt=''/><span class='sdt_active'></span><span class='sdt_wrap'><span class='sdt_link'>Projects</span><span class='sdt_descr'>I like to code</span></span></a><div class='sdt_box'><a href='#'>Job Board Website</a><a href='#'>Shopping Cart</a><a href='#'>Interactive Maps</a></div></li></ul></div><div>", :lesson=>"<%= stylesheet_link_tag 'SlideDownBox' %>")
PluginSample.create!(:name=>"Quicksand", :description=>"A Selector Sorter of Lists", :script_markup=>"// Custom sorting plugin
(function($) {
  $.fn.sorted = function(customOptions) {
    var options = {
      reversed: false,
      by: function(a) { return a.text(); }
    };
    $.extend(options, customOptions);
    $data = $(this);
    arr = $data.get();
    arr.sort(function(a, b) {
      var valA = options.by($(a));
      var valB = options.by($(b));
      if (options.reversed) {
        return (valA < valB) ? 1 : (valA > valB) ? -1 : 0;
      } else {
        return (valA < valB) ? -1 : (valA > valB) ? 1 : 0;
      }
    });
    return $(arr);
  };
})(jQuery);

// DOMContentLoaded
$(function() {

  // bind radiobuttons in the form

  var $filterType = $('#filter input[name='type']');
  var $filterSort = $('#filter input[name='sort']');

  // get the first collection
  var $applications = $('#applications');

  // clone applications to get a second collection
  var $data = $applications.clone();

  // attempt to call Quicksand on every form change
  $filterType.add($filterSort).change(function(e) {
    if ($($filterType+':checked').val() == 'all') {
      var $filteredData = $data.find('li');
    } else {
      var $filteredData = $data.find('li[data-type=' + $($filterType+':checked').val() + ']');
    }

    // if sorted by size
    if ($('#filter input[name='sort']:checked').val() == 'size') {
      var $sortedData = $filteredData.sorted({
        by: function(v) {
          return parseFloat($(v).find('span[data-type=size]').text());
        }
      });
    } else {
      // if sorted by name
      var $sortedData = $filteredData.sorted({
        by: function(v) {
          return $(v).find('strong').text().toLowerCase();
        }
      });
    }

    // finally, call quicksand
    $applications.quicksand($sortedData, {
      duration: 800,
      easing: 'easeInOutQuad'
    });

  });

});", :html_markup=>"

          <form id='filter'>
        		<fieldset>
        			<legend>Filter by type</legend>
        			<label><input name='type' value='all' checked='checked' type='radio'>Everything</label>
        			<label><input name='type' value='app' type='radio'>Applications</label>
        			<label><input name='type' value='util' type='radio'>Utilities</label>
        <br/>        <br/>        			<legend>Sort by</legend>
        			<label><input name='sort' value='size' checked='checked' type='radio'>Size</label>
        			<label><input name='sort' value='name' type='radio'>Name</label>
        		</fieldset>
        	</form>
        <br/>        <br/>        <br/>
          <ul id='applications' class='image-grid'>
            <li data-id='id-1' data-type='util'>
              <img src='../assets/images/activity-monitor.png' alt='' height='128' width='128'>
              <strong>Activity Monitor</strong>
              <span data-type='size'>348 KB</span>
            </li>
            <li data-id='id-2' data-type='app'>
              <img src='../assets/images/address-book.png' alt='' height='128' width='128'>
              <strong>Address Book</strong>
              <span data-type='size'>1904 KB</span>
            </li>
            <li data-id='id-3' data-type='app'>
              <img src='../assets/images/finder.png' alt='' height='128' width='128'>
              <strong>Finder</strong>
              <span data-type='size'>1337 KB</span>
            </li>
            <li data-id='id-4' data-type='app'>
              <img src='../assets/images/front-row.png' alt='' height='128' width='128'>
              <strong>Front Row</strong>
              <span data-type='size'>401 KB</span>
            </li>
            <li data-id='id-5' data-type='app'>
              <img src='../assets/images/google-pokemon.png' alt='' height='128' width='128'>
              <strong>Google Pokemon</strong>
              <span data-type='size'>12875 KB</span>
            </li>
            <li data-id='id-6' data-type='app'>
              <img src='../assets/images/ical.png' alt='' height='128' width='128'>
              <strong>iCal</strong>
              <span data-type='size'>5273 KB</span>
            </li>
            <li data-id='id-7' data-type='app'>
              <img src='../assets/images/ichat.png' alt='' height='128' width='128'>
              <strong>iChat</strong>
              <span data-type='size'>5437 KB</span>
            </li>
            <li data-id='id-8' data-type='app'>
              <img src='../assets/images/interface-builder.png' alt='' height='128' width='128'>
              <strong>Interface Builder</strong>
              <span data-type='size'>2764 KB</span>
            </li>
            <li data-id='id-9' data-type='app'>
              <img src='../assets/images/ituna.png' alt='' height='128' width='128'>
              <strong>iTuna</strong>
              <span data-type='size'>17612 KB</span>
            </li>
            <li data-id='id-10' data-type='util'>
              <img src='../assets/images/keychain-access.png' alt='' height='128' width='128'>
              <strong>Keychain Access</strong>
              <span data-type='size'>972 KB</span>
            </li>
            <li data-id='id-11' data-type='util'>
              <img src='../assets/images/network-utility.png' alt='' height='128' width='128'>
              <strong>Network Utility</strong>
              <span data-type='size'>245 KB</span>
            </li>
            <li data-id='id-12' data-type='util'>
              <img src='../assets/images/sync.png' alt='' height='128' width='128'>
              <strong>Sync</strong>
              <span data-type='size'>3788 KB</span>
            </li>
            <li data-id='id-13' data-type='app'>
              <img src='../assets/images/textedit.png' alt='' height='128' width='128'>
              <strong>TextEdit</strong>
              <span data-type='size'>1669 KB</span>
            </li>
          </ul>



   ", :lesson=>"<%= stylesheet_link_tag 'Quicksand' %>")
PluginSample.create!(:name=>"JQuery-Presentation", :description=>"A Presentation Builder", :script_markup=>"$('#presentation_slides').presentation({
 slide: '.presentation_slide',
 pagerClass: 'nav-pager',
 prevNextClass: 'nav-prev-next',
 prevText: 'Previous',
 nextText: 'Next',
 transition: 'hide'});", :html_markup=>"<div id='presentation_content'>
<div id='presentation_slides'>
        <div class='presentation_slide'>
          <h2>Slide 1</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <ul>
           <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</li>
           <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>
           <li>Here is a short list item</li>
          </ul>

        </div>
        <div class='presentation_slide'>
          <h2>Slide 2</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class='presentation_slide'>
          <h2>Slide 3</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class='presentation_slide'>
          <h2>Slide 4</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class='presentation_slide'>
          <h2>Slide 5</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
       </div>
     </div>", :lesson=>"<%= stylesheet_link_tag 'JQuery-Presentation' %>")
PluginSample.create!(:name=>"Jquery-Media", :description=>"Low effort video integration into the web page", :script_markup=>"$('.media').media();", :html_markup=>"<a class='media' href='/assets/videos/edubridge.flv'></a>")
#PluginSample.create!(:name=>"", :description=>"", :script_markup=>"", :html_markup=>"")


User.create!(:username =>"facilitator", :password =>"pick_a_daily1", :password_confirmation =>"pick_a_daily1", :email=>"facilitator@ptotem.com", :first_name =>"facilitator", :last_name=>"facilitator", :admin =>false, :super_admin =>false, :facilitator =>true, :student =>false)
Facilitator.create!(:user_id=>User.first.id)


User.create!(:username =>"admin", :password =>"pick_a_daily1", :password_confirmation =>"pick_a_daily1", :email =>"admin@ptotem.com", :first_name =>"admin", :last_name =>"admin", :admin =>true, :super_admin =>false, :facilitator =>false, :student =>false)
User.create!(:username =>"superadmin", :password =>"pick_a_daily1", :password_confirmation =>"pick_a_daily1", :email =>"superadmin@ptotem.com", :first_name =>"superadmin", :last_name =>"superadmin", :admin =>false, :super_admin =>true, :facilitator =>false, :student =>false)


Sector.create!(:name =>"Agriculture")
Sector.create!(:name =>"Petroleum")
Sector.create!(:name =>"Automobile")
Sector.create!(:name =>"Electricity")
Sector.create!(:name =>"Finance")
Sector.create!(:name =>"Aviation")


Company.create!(:name =>"company1", :sector_id => 1)
Company.create!(:name =>"company2", :sector_id => 1)
Company.create!(:name =>"company3", :sector_id => 1)
Company.create!(:name =>"company4", :sector_id => 1)
Company.create!(:name =>"company5", :sector_id => 1)

Company.create!(:name =>"company6", :sector_id => 2)
Company.create!(:name =>"company7", :sector_id => 2)
Company.create!(:name =>"company8", :sector_id => 2)
Company.create!(:name =>"company9", :sector_id => 2)
Company.create!(:name =>"company10", :sector_id => 2)


Company.create!(:name =>"company11", :sector_id => 3)
Company.create!(:name =>"company12", :sector_id => 3)
Company.create!(:name =>"company13", :sector_id => 3)
Company.create!(:name =>"company14", :sector_id => 3)
Company.create!(:name =>"company15", :sector_id => 3)


Company.create!(:name =>"company16", :sector_id => 4)
Company.create!(:name =>"company17", :sector_id => 4)
Company.create!(:name =>"company18", :sector_id => 4)
Company.create!(:name =>"company19", :sector_id => 4)
Company.create!(:name =>"company20", :sector_id => 4)


Company.create!(:name =>"company21", :sector_id => 5)
Company.create!(:name =>"company22", :sector_id => 5)
Company.create!(:name =>"company23", :sector_id => 5)
Company.create!(:name =>"company24", :sector_id => 5)
Company.create!(:name =>"company25", :sector_id => 5)


Company.create!(:name =>"company26", :sector_id => 6)
Company.create!(:name =>"company27", :sector_id => 6)
Company.create!(:name =>"company28", :sector_id => 6)
Company.create!(:name =>"company29", :sector_id => 6)
Company.create!(:name =>"company30", :sector_id => 6)

ImpactValue.create!(:name =>"POSITIVE_HIGH", :value_amount=>1.8)
ImpactValue.create!(:name =>"POSITIVE_MEDIUM", :value_amount=>1.5)
ImpactValue.create!(:name =>"POSITIVE_LOW", :value_amount=>1.2)
ImpactValue.create!(:name =>"NEGATIVE_HIGH", :value_amount=>0.2)
ImpactValue.create!(:name =>"NEGATIVE_MEDIUM", :value_amount=>0.5)
ImpactValue.create!(:name =>"NEGATIVE_LOW", :value_amount=>0.8)
ImpactValue.create!(:name =>"NO IMPACT", :value_amount=>1)


#loop for creating stocks for companies
Company.all.each do |company|
  @stock=Stock.new
  @stock.company_id=company.id
  @stock.base_price=rand(1500)
  @stock.base_rate=(1+rand(5))/10.to_f
  @stock.base_sigma=1
  @stock.lot_size=(1+rand(50))*10
  @stock.save!

end

Constant.create!(:name=>"Price")
Constant.create!(:name=>"Sigma")
Constant.create!(:name=>"Rate")















