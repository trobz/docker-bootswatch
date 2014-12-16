## Description

This docker image is made to customize [Bootstrap 3.3.1][1] style with [Bootswatch][2], by using [LESS][3] CSS pre-processor files.

The image will run the Bootswatch grunt task, with no argument by default (serve and watch modification).   
All arguments passed to the `docker run` command, after the image name, are used as `grunt` arguments.

To get a list of available arguments, use `docker run --rm trobz/bootswatch --help` command.

### Port

- `3000`: default port used by Grunt task to serve files.

### Volumes

At container startup, if the `/opt/bootstrap/workspace` folder is empty, a script will copy `custom/*` files into it. 
You should bind a host folder with `/opt/bootstrap/workspace` if you want to customize a bootstrap theme, and keep your changes persistant.



  [1]: http://getbootstrap.com
  [2]: http://bootswatch.com
  [3]: http://lesscss.org
