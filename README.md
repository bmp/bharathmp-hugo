# README #

Please visit www.bharathpalavalli.com to see the live site, this is a complete backup.

This is a HTML 5 compliant theme

### What is included ###
* Modified themes in layouts
* Disqus integration
* Piwik integration added
* Demosite available at https://bmp.github.io/bharathmp-hugo/

### To-Do ###
* Add image support
* Add multiple font support
* Search integration
* ~~Create demosite on Github Pages~~

### Notes ###
In order to fix icons issue on on your server, please add the following text to your .htaccess,

```script
<FilesMatch "\.(ttf|otf|eot|woff)$">
  <IfModule mod_headers.c>
    Header set Access-Control-Allow-Origin "*"
  </IfModule>
</FilesMatch>

ErrorDocument 404 /404.html
```
