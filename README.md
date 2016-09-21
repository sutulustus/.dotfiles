# .dotfiles
apache + php + phusion passenger setup

symlinks:
-----
- ~/.zshrc@ -> .dotfiles/.zshrc
- ~/.oh-my-zsh/custom/aliases.zsh@ -> .dotfiles/aliases.zsh
- /private/etc/my.cnf@ -> .dotfiles/my.cnf
- /private/etc/apache2/httpd.conf@ -> .dotfiles/httpd.conf
- /usr/local/etc/php/5.6/php.ini@ -> .dotfiles/php56.ini


changes:
----
- update alias paths in `aliases.zsh`
- update LoadModule paths according to installed dependancies in `httpd.conf`
- update Group and User in `httpd.conf`
- update # Virtual hosts include routes in `httpd.conf`
- update VirtualDocumentRoot paths in `httpd-vhosts.conf`
- update DocumentRoot, Alias, Directory and PassengerRuby paths in `httpd-vhosts-rails.conf`
- update pear include path in `php56.ini`
