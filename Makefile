all:
	bash update.sh
	git add .
	git commit -m 'update index'
	git push origin master
