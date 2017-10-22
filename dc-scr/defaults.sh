
#If MY_APACHE2_SITENAME is not defined of emtpy set it to default value: html
[[ -z "${MY_APACHE2_SITENAME}" ]] && MY_APACHE2_SITENAME="html" 

echo ${MY_APACHE2_SITENAME}

