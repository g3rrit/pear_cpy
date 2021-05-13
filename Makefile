default: build

############### FILES #################
FILES=pear_cpy.bycython.c setup.py

pear_cpy.bycython.c: pear_cpy.pyx cpear_cpy.pxd
	cython pear_cpy.pyx -o pear_cpy.bycython.c
#######################################

############## COMMANDS ###############
build: ${FILES}
	python setup.py build_ext -i

sdist: ${FILES}
	python setup.py sdist

# publishing currently does not work
publish: clean sdist
	twine upload dist/pear_cpy*.tar.gz

clean:
	rm -rf dist pear_cpy.egg-info build *.bycython.* pear_cpy.*.so
#######################################
