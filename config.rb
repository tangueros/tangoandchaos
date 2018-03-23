#############
# based on jina.me
#############

require "builder"
#require 'active_support/core_ext/integer/inflections'

Time.zone = "Asia/Singapore"

#activate :autoprefixer do |config|
#  config.browsers = ['last 2 versions', 'Explorer >= 9']
#  config.remove   = false
#  config.cascade = false
#  config.inline  = true
#end


#["tom", "dick", "harry"].each do |name|
#  proxy "/about/#{name}/index.html", "/about/template.html",
#  :locals => { :person_name => name }, :ignore => true
#end




#ignore "proxy/calendar.html"
ignore "proxy/*"
ignore "rick/*"
ignore "old/*"
#ignore "journal/*"

#activate :deploy do |deploy|
#  deploy.method = :git
#  deploy.remote   = 'git@github.com:jina/jina.me.git'
#  deploy.branch   = 'gh-pages'
#end



activate :blog do |blog|
  #blog.name = 'chapter'
  blog.sources = "journal/{oldslug}.html"
  blog.permalink =  "{chapter}/{slug}.html"
  #blog.default_extension = ".haml"
  blog.layout = "posts"
  #blog.paginate = false
end




activate :directory_indexes
activate :relative_assets
activate :livereload

#compass_config do |config|
#  config.output_style = :expanded
#end

#Sass::Script::Number.precision = 8


#page "/feed.xml",   layout: false
#page "/humans.txt", layout: false
page '/*.xml',     :layout => false
#page '/*.json',    layout: false
page '/*.txt',     :layout => false
#page '/admin/*', :layout => 'admin'



#set :source, "pages"
#set :css_dir,     'stylesheets'
#set :images_dir,  'images'
#set :js_dir,      'javascripts'
#set :layout_dir,  'layouts'
set :css_dir,     'assets/css'
#set :fonts_dir,   'assets/fonts'
set :images_dir,  'assets/img'
set :js_dir,      'assets/js'

set :haml, {    :format => :html5  }

set :markdown,  :tables => true,
                :autolink => true,
                :gh_blockcode => true,
                :fenced_code_blocks => true,
                :with_toc_data => true,
                :smartypants => true

set :markdown_engine, :redcarpet




configure :build do
  set :build_dir, 'public'
  set :base_url, ""

  #activate :asset_hash, ignore: "/assets/img/"
  #activate :asset_host, :host => '//YOURDOMAIN.cloudfront.net'

  #activate :minify_css
  #activate :minify_html
  #activate :minify_javascript
  #activate :relative_assets

  #compass_config do |config|
  #  config.output_style = :compressed
  #end

  set :relative_links, true
end
