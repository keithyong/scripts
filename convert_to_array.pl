# convert_to_array.pl
# Converts a multiple file into an array.
#
# Example:
# hi
# hello
# bye
# Academy of Economics "Dimitur A. Tscenov"
#
# -> ["hi", "hello", "bye", "Academy of Economics \"Dimitur A. Tscenov\""]
#
# Usage:
# cat my_text_file.txt | perl convert_to_array.pl > my_array.json
#
# August 24, 2015
# Keith Yong

$arr = "\[";

while ($line = <>) {
    chomp $line;
    $line =~ s/"/\\"/g;
    $arr = $arr . "\"" . $line . "\"";

    if (!eof()) {
        $arr = $arr . ", ";
    }
}

$arr = $arr . "\]";
print $arr;
