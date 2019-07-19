$data = foreach($line in Get-Content C:\FTPData\Choctaw-ImportTemplate.csv)
{
    if($line -like '*Delete*')
    {

    }
    else
    {
        $line
    }

}

$data | Set-Content C:\FTPData\Choctaw-ImportTemplate.csv -Force

$data = foreach($line in Get-Content C:\FTPData\Choctaw-ImportTemplate.csv)
{
    if($line -like '*1/0/1900*')
    {

    }
    else
    {
        $line
    }

}

$data | Set-Content C:\FTPData\Choctaw-ImportTemplate.csv -Force