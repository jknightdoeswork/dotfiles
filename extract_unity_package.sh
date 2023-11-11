set -e
echo "Extracting \"$1\" to \"$2\""
tar zxfv "$1" --one-top-level="$2"
echo "Rewriting files so they make sense"
find -name asset -exec bash -c '\
    filename="`dirname "$(dirname "{}")"`/`cat "$(dirname "{}")/pathname" \
        | cut -d$'"'\n'"' -f1 \
        | tr -d "\n"`"; \
    filedir=`dirname "$filename"`; \
    mkdir -p "$filedir"; \
    echo "Extracting \"$filename\"..."; \
    cp "{}" "$filename"' \;
echo "Cleaning up"
find -type d -regextype sed -regex '.*[0-9a-f]\{32\}' | xargs -I{} rm -rf "{}"

echo "Complete"
