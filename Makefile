PANDOC = /usr/bin/pandoc
HTMLFILE = e-soh-requirements-doc.html
#BROWSER = chromium

html: pandoc

pandoc:
	echo "<h1>E-SOH requirements document</h1>" > pandoc-heading.TMP
	echo "<p>Generated (using Pandoc) from Git at: `date -u +'%F %T UTC'`." >> pandoc-heading.TMP
	echo "<p>Github repository: <a href=\"https://github.com/EURODEO/e-soh-requirements\">https://github.com/EURODEO/e-soh-requirements</a></p>" >> pandoc-heading.TMP	
	cat introduction/* > pandoc.TMP
	echo "" >> pandoc.TMP
	cat dependencies/dependencies.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat user-requirements/user-requirements.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat business-requirements/business-requirements.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat functional-and-non-functional-requirements/functional-and-non-functional-requirements.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat risks/risks.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat conclusion/conclusion.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	$(PANDOC) -s -N -B pandoc-heading.TMP --toc --toc-depth=2 -c pandoc.css -f markdown -t html pandoc.TMP > $(HTMLFILE)
	rm pandoc.TMP
	rm pandoc-heading.TMP
	#$(BROWSER) $(HTMLFILE)

clean:
	rm -f $(HTMLFILE)

