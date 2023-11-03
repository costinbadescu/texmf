update:
	updmap-sys
	mktexlsr

clean:
	git clean -f

minion.tar.gz:
	git diff --name-only 26a96b3 ed37e5a | bsdtar -a -c -f $@ -T -

myriad.tar.gz:
	git diff --name-only 7568c49 26a96b3 | bsdtar -a -c -f $@ -T -

mathtime.tar.gz:
	git diff --name-only ce47857 7568c49 | bsdtar -a -c -f $@ -T -

.PHONY: clean update
