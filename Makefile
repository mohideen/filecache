srcdir := FileCache
version := 1.0.0-SNAPSHOT
out_package := ../$(srcdir)_$(version).tar.gz

package: $(out_package)

$(out_package):
	 tar -zcv --exclude .git --exclude-vcs --exclude \*\~ --exclude-backups -X .gitignore -f $@ -C ../ $(srcdir)
