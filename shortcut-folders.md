## Create folder structure on Linux host
Get the script file <br>
```shell

cd ~
#
# -f Fail silently (no output at all) on server errors.
# -s Silent or quiet mode. Don't show progress meter or error messages.
# -S When used with -s, --silent, it makes curl show an error message if it fails. 
# -L (HTTP) If the server reports that the requested page has moved to a different location 
#    (indicated with a Location: header and a 3XX response code),
#    this option will make curl redo the request on the new place

curl -fsSL https://raw.githubusercontent.com/pierre-pvln/compose-on_host/master/prepare_host_for_docker.sh -o prepare_host_for_docker.sh

```
