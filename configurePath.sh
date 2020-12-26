found=$(find /sys/devices -wholename "*APP0001:00/fan*" | head -1)
path=$(dirname $found)

echo " ------------------------------------- "
echo "  Found fan at '${path}'"
echo ""
echo "  For me the output was something like '/sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:102/APP0001:00'."
echo ""
echo "  If your path looks completely different and the tests fail, "
echo "  try just using the normal (unpatched) version (git reset --hard origin/master)"
echo ""

line1="#define APPLESMC_PATH \"$path\""
line2="    const char *path_begin = \"$path/fan\";"

sed -i "54s|.*|$line1|" "./src/mbpfan.c"
sed -i "277s|.*|$line2|" "./src/mbpfan.c"

echo "  Patched mbpfan.c"
echo ""
echo "  See further install instructions here: "
echo "  https://github.com/networkException/mbpfan/#generic-install-instructions-all-other-operating-systems"
echo "  It's advised to also run the tests to check if the patch was successful"
echo " ------------------------------------- "


