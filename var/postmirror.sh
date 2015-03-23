for rama in jessie wheezy-backports wheezy ; do                                                                                                                     
	directorio=debian.cantv.net/debian/dists/$rama

	ubicacion=/media/mirror/mirror/$directorio

	for directory in contrib main non-free; do                                                                                                                     
	    cd $ubicacion/$directory                                                                                                                                              
	    mkdir i18n 2>/dev/null                                                                                                                                     
	    cd i18n                                                                                                                                                    
	    rm Translation-en*                                                                               rm Translation-es*                                                                                                                                         
	    wget http://$directorio/$directory/i18n/Translation-en.bz2
	    wget http://$directorio/$directory/i18n/Translation-es.bz2

	done
done
