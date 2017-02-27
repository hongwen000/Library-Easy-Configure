#requires -version 2.0
param([bool]$enable)

$signature = @'
[DllImport("user32.dll")]
public static extern bool SystemParametersInfo(
    uint uiAction,
    uint uiParam,
    uint pvParam,
    uint fWinIni);
'@

$SPI_SETFONTSMOOTHING      = 0x004B
$SPI_SETFONTSMOOTHINGTYPE  = 0x200B
$SPIF_UPDATEINIFILE        = 0x1
$SPIF_SENDCHANGE           = 0x2
$FE_FONTSMOOTHINGCLEARTYPE = 0x2

$winapi = Add-Type -MemberDefinition $signature -Name WinAPI -PassThru


[void]$winapi::SystemParametersInfo($SPI_SETFONTSMOOTHING, 1, 0, $SPIF_UPDATEINIFILE -bor $SPIF_SENDCHANGE)
[void]$winapi::SystemParametersInfo($SPI_SETFONTSMOOTHINGTYPE, 0, $FE_FONTSMOOTHINGCLEARTYPE, $SPIF_UPDATEINIFILE -bor $SPIF_SENDCHANGE)
