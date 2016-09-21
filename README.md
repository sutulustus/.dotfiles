# .dotfiles
apache + php + phusion passenger setup

symlinks:
-----
- ~/.zshrc@ -> .dotfiles/.zshrc
- ~/.oh-my-zsh/custom/aliases.zsh@ -> .dotfiles/aliases.zsh
- /private/etc/my.cnf@ -> .dotfiles/my.cnf
- /private/etc/apache2/httpd.conf@ -> .dotfiles/httpd.conf



changes:
----

- update # Virtual hosts include routes in `httpd.conf`
- update VirtualDocumentRoot paths in `httpd-vhosts.conf`
- update DocumentRoot, Alias, Directory and PassengerRuby paths in `httpd-vhosts-rails.conf`
