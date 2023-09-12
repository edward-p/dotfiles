function farsee -d "yapbcli for https://fars.ee/"

set BASE_URL "https://fars.ee"

function usage -d "show usage"
	echo "USAGE:"
	echo "  farsee (all contents will be inputted from stdin)"
	echo "  farsee [options] <params>"
	echo
	echo "OPTIONS:"
	echo "	-s		shortening url"
	echo "	-u <uuid>	updating paste"
	echo "	-d <uuid>	deleting paste"
	echo "	-v <vanity>	vanity pastes"
	echo "	-q		return url only"
	echo "	-p		private pastes"
	echo "	-t <seconds>	sunsetting pastes (aka. self-destruct pastes)"
	echo
	echo "Visit https://fars.ee/ for more info."
end

set curl_args ()
set url "$BASE_URL"

set args $argv

while set -q args[1]
	switch $args[1] 
    case -s
    	set url "$BASE_URL/u"
		  set args $args[2..-1]
    case -u
	  	if contains "DELETE" $curl_args
		  	echo "Wrong combination of options!" 1>&2
			  usage
  			return 1
	  	end
		  set url "$BASE_URL/$args[2]"
      set args $args[3..-1]
  		set -a curl_args '-X' 'PUT'
    case -d
  		if contains "PUT" $curl_args
			  echo "Wrong combination of options!" 1>&2
  			usage
	  		return 1
      end 
		  set url "$BASE_URL/$args[2]"
      set args $args[3..-1]
	  	set -a curl_args '-X' 'DELETE'
  	case -v
      set url "$BASE_URL/~$args[2]"
      set args $args[3..-1]
  	case -t
  		set -a curl_args '-F' "sunset=$args[2]"
      set args $args[3..-1]
    case -q
		  set url="$url/?u=1"
      set args $args[2..-1]
    case -p
  		set -a curl_args '-F' 'p=1'
      set args $args[2..-1]
    case -h --help
  		usage && return 0
  	end
end

if ! set -q argv[1]
  usage && return 0
end

if ! contains "DELETE" $curl_args
  set -a curl_args '-F' 'c=@-'
end

echo "curl $curl_args $url"
curl $curl_args "$url"

end
