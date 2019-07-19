param([String]$fileName)
#New-item -Path C:\FTPData\ChoctawData\Logging0.txt -Value 'End of file '

$file='C:\FTPData\ChoctawData\ChoctawDailyData.csv'
$file2='C:\FTPData\ChoctawData\Choctaw-ImportData.csv'

if(Test-Path $file){
#New-item -Path C:\FTPData\ChoctawData\Logging1.txt -Value 'End of file '
  $Target = "C:\FTPData\ChoctawData\Archive\ChoctawDailyData" + $(get-date -f yyyy-MM-dd) + ".csv"
	Copy-Item "C:\FTPData\ChoctawData\ChoctawDailyData.csv" -Destination $Target
	Copy-Item "C:\FTPData\ChoctawData\ChoctawDailyData.csv" -Destination "C:\FTPData\TranslateTemplate\_SheetInProgress.csv"
    Remove-Item $file
    #Remove-Item $file2
$FileLocation = 'C:\FTPData\TranslateTemplate\_SheetInProgress.csv'
$TemplateLocation = 'C:\FTPData\TranslateTemplate\Choctaw-ImportTemplate.xlsm'
$xl = new-object -c excel.application
$wb1 = $xl.workbooks.open($FileLocation) 
$wb2 = $xl.workbooks.open($TemplateLocation) 
$xl.Visible = $true
$xl.Run("'Choctaw-ImportTemplate.xlsm'!CopyPasteValues2")

$xl.DisplayAlerts=$False

$wb1.Close()
$wb2.Close()

$xl.DisplayAlerts=$True
}
else
{
#New-item -Path C:\FTPData\ChoctawData\Logging2.txt -Value 'End of file '
}
$xl | out-null
$data = foreach($line in Get-Content C:\FTPData\ChoctawData\Choctaw-ImportData.csv)
{
    if($line -like '*Delete*')
    {

    }
    else
    {
        $line
    }

}
$data | Set-Content C:\FTPData\ChoctawData\Choctaw-ImportData.csv -Force
$data = foreach($line in Get-Content C:\FTPData\ChoctawData\Choctaw-ImportData.csv)
{
    if($line -like '*1/0/1900*')
    {

    }
    else
    {
        $line
    }

}
$data | Set-Content C:\FTPData\ChoctawData\Choctaw-ImportData.csv -Force
Move-Item -Path C:\FTPData\ChoctawData\Choctaw-ImportData.csv -Destination C:\XferPush\Choctaw\Choctaw-ImportData.csv
