 
 NOTES;
 
 * To work with the API:  localhost:8080/_ah/api/explorer 
    (from a browser on the Ubuntu desktop)
 
 * When it comes up there will be two windows: a console window where the
   load information appears and the desktop window which will may be
   underneath (z-order wise) the console window and any other stuff on the 
   desktop. The console window's text will probably turn red near the end 
   and there will be a "not found" error. You can ignore the error. App 
   Engine/application runtime information will subsequently appear in the 
   console window.
   
 * Get a terminal/console on the desktop by clicking on the icon at the top 
   of the sidebar and type "terminal" into the edit bar then click on the 
   terminal icon that appears below. 
   
 * You can remove unwanted icons from the sidebar using the "unlock from
   sidebar" item in the right click menu.
  
 * A shutdown from the desktop is required before a vagrant halt.
 
 * A restart is not the equivalent of a vagrant reload cycle since a 
   desktop initiated restart will result in a loss of the /vagrant 
   shared file and lot'sa stuff will break. This is especially important
   to remember because the OS can and will initiate a restart, sometimes 
   when you aren't looking :)
   
   That means ALWAYS start the vagrant box with a vagrant up and NEVER use
   a restart from the Ubuntu deskstop.
   
 * The directory at /vagrant in a Ubuntu shell is the same directory that 
   you unzipped into on your Mac, i.e., files you change, add or remove 
   from either directory will be changed, added or removed from the other.
   
 * three ^C's will exit the hd-events/app server.
 
 * The password for the Ubuntu desktop is 'vagrant'
 
 * To start the environment:  vagrant up
  
 * To open a shell into the vagrant box:  vagrant ssh
 
 * To stop the vagrantbox:  vagrant halt
 
 * To start from scratch:  vagrant destroy
 
 
 -----------------------------

  Vagrantfile &  bootstrap.sh

  

