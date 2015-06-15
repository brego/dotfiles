read -s -p "Enter password: " pass_one;
echo;
read -s -p "Re-enter password: " pass_two;

if [ "$pass_one" != "$pass_two" ]; then
  echo "\nPasswords not identical. Exiting.";
  exit;
fi

echo;
read -p "Enter site name: " pass_site;
read -p "Enter definition: " pass_def;

if [ "$pass_site" == "" ]; then
  echo "No site name. Exiting.";
  exit;
fi

pass="$pass_one:$pass_site:$pass_def";

pass=`printf "${pass}" | openssl dgst -sha1 -binary | base64 | cut -c1-10`;

pass="!\$${pass}1a";

printf "${pass}" | pbcopy;

echo "Password in clipboard."
