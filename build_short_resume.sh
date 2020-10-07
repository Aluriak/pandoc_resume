FIELD=$(cat long_marker)
RESUME=resume.md

# create short version
cat markdown/base_$RESUME | grep -ve "$FIELD" > markdown/short_$RESUME
# create regular version
cp markdown/base_$RESUME markdown/$RESUME

# remove dividers and line jump in the short version
sed -i "s/<br\/>//" "markdown/short_$RESUME"
# remove long marker from regular resume
sed -i "s/${FIELD}//" "markdown/$RESUME"
