Attribute VB_Name = "Module1"
Sub CopyPasteValues2()
Attribute CopyPasteValues2.VB_ProcData.VB_Invoke_Func = " \n14"
'
' CopyPasteValues2 Macro
'
    ActiveWorkbook.RefreshAll
    Windows("Choctaw-ImportTemplate.xlsm").Activate

    Sheets("TranslateforExport").Select
    Cells.Select
    Selection.Copy
    Sheets("Choctaw-ImportTemplate").Select
    Range("A1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

Application.DisplayAlerts = False
Sheets("Choctaw-ImportTemplate").Select
    ActiveWorkbook.SaveAs Filename:="C:\FTPData\ChoctawData\Choctaw-ImportData.csv", _
        AccessMode:=xlExclusive, ConflictResolution:=Excel.XlSaveConflictResolution.xlLocalSessionChanges, FileFormat:=xlCSV
Application.DisplayAlerts = False
    Windows("_SheetInProgress.csv").Activate
'    ActiveWindow.Close
'    Application.Quit
    Windows("Choctaw-ImportData.csv").Activate
'    ActiveWindow.Close
'    Application.Quit
Application.DisplayAlerts = True

End Sub
