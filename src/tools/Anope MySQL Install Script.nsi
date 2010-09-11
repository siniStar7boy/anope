; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Anope IRC Services"
!define PRODUCT_VERSION "1.8.5-MySQL"
!define PRODUCT_PUBLISHER "Anope"
!define PRODUCT_WEB_SITE "http://www.anope.org"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\anope.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "anope-icon.ico"
!define MUI_UNICON "anope-icon.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!define MUI_LICENSEPAGE_RADIOBUTTONS
!insertmacro MUI_PAGE_LICENSE "anope-1.8.5-MySQL\docs\COPYING.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\docs\README.txt"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "Spanish"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Anope-1.8.5-MySQL.exe"
InstallDir "$PROGRAMFILES\Anope"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  File "anope-1.8.5-MySQL\anope.exe"
File "anope-1.8.5-MySQL\anope.bat"
  SetShellVarContext all
  CreateDirectory "$SMPROGRAMS\Anope"
  CreateShortCut "$SMPROGRAMS\Anope\Anope IRC Services.lnk" "$INSTDIR\anope.exe"
  CreateShortCut "$DESKTOP\Anope IRC Services.lnk" "$INSTDIR\anope.exe"
  CreateDirectory "$SMPROGRAMS\Anope\Advanced"
  CreateShortCut "$SMPROGRAMS\Anope\Advanced\Anope IRC Services (Debug and Window Logging).lnk" "$INSTDIR\anope.bat" "-debug -nofork"
  CreateShortCut "$SMPROGRAMS\Anope\Advanced\Anope IRC Services (Window Logging).lnk" "$INSTDIR\anope.bat" "-nofork"
  CreateShortCut "$SMPROGRAMS\Anope\Advanced\Anope IRC Services (No Third Party Modules).lnk" "$INSTDIR\anope.bat" "-nothird"

  File "anope-1.8.5-MySQL\anope.exe.manifest"
  File "anope-1.8.5-MySQL\Changes.conf.txt"
  File "anope-1.8.5-MySQL\Changes.lang.txt"
  File "anope-1.8.5-MySQL\Changes.mysql.txt"
  File "anope-1.8.5-MySQL\Changes.txt"
  SetOutPath "$INSTDIR\data"
  File "anope-1.8.5-MySQL\data\anopesmtp.exe"
  File "anope-1.8.5-MySQL\data\anopesmtp.exe.manifest"
  SetOutPath "$INSTDIR\data\bin"
  File "anope-1.8.5-MySQL\data\bin\am"
  File "anope-1.8.5-MySQL\data\bin\anoperc.in"
  File "anope-1.8.5-MySQL\data\bin\cp-recursive"
  File "anope-1.8.5-MySQL\data\bin\langtool"
  File "anope-1.8.5-MySQL\data\bin\mydbgen"
  File "anope-1.8.5-MySQL\data\bin\register"
  SetOutPath "$INSTDIR\data"
  File "anope-1.8.5-MySQL\data\db-merger.exe"
  File "anope-1.8.5-MySQL\data\db-merger.exe.manifest"
  File "anope-1.8.5-MySQL\data\epona2anope.exe"
  File "anope-1.8.5-MySQL\data\epona2anope.exe.manifest"
  File "anope-1.8.5-MySQL\data\example.conf"
  SetOutPath "$INSTDIR\data\languages"
  File "anope-1.8.5-MySQL\data\languages\cat"
  File "anope-1.8.5-MySQL\data\languages\de"
  File "anope-1.8.5-MySQL\data\languages\en_us"
  File "anope-1.8.5-MySQL\data\languages\es"
  File "anope-1.8.5-MySQL\data\languages\fr"
  File "anope-1.8.5-MySQL\data\languages\gr"
  File "anope-1.8.5-MySQL\data\languages\hun"
  File "anope-1.8.5-MySQL\data\languages\it"
  File "anope-1.8.5-MySQL\data\languages\nl"
  File "anope-1.8.5-MySQL\data\languages\pl"
  File "anope-1.8.5-MySQL\data\languages\pt"
  File "anope-1.8.5-MySQL\data\languages\ru"
  File "anope-1.8.5-MySQL\data\languages\tr"
  SetOutPath "$INSTDIR\data\logs"
SetOutPath "$INSTDIR\data\backups"
  SetOutPath "$INSTDIR\data\modules"
  File "anope-1.8.5-MySQL\data\modules\bahamut.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_act.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_assign.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_badwords.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_bot.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_botlist.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_fantasy.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_fantasy_kick.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_fantasy_kickban.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_fantasy_owner.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_fantasy_seen.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_fantasy_unban.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_help.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_info.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_kick.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_say.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_set.dll"
  File "anope-1.8.5-MySQL\data\modules\bs_unassign.dll"
  File "anope-1.8.5-MySQL\data\modules\charybdis.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_access.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_akick.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_appendtopic.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_ban.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_clear.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_drop.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_enforce.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_forbid.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_getkey.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_getpass.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_help.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_identify.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_info.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_invite.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_kick.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_list.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_logout.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_modes.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_register.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_sendpass.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_set.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_status.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_suspend.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_tban.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_topic.dll"
  File "anope-1.8.5-MySQL\data\modules\cs_xop.dll"
  File "anope-1.8.5-MySQL\data\modules\dreamforge.dll"
  File "anope-1.8.5-MySQL\data\modules\enc_md5.dll"
  File "anope-1.8.5-MySQL\data\modules\enc_sha1.dll"
  File "anope-1.8.5-MySQL\data\modules\enc_none.dll"
  File "anope-1.8.5-MySQL\data\modules\enc_old.dll"
  File "anope-1.8.5-MySQL\data\modules\he_help.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_del.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_delall.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_group.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_help.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_list.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_off.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_on.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_request.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_set.dll"
  File "anope-1.8.5-MySQL\data\modules\hs_setall.dll"
  File "anope-1.8.5-MySQL\data\modules\hybrid.dll"
  File "anope-1.8.5-MySQL\data\modules\inspircd11.dll"
  File "anope-1.8.5-MySQL\data\modules\inspircd12.dll"
  File "anope-1.8.5-MySQL\data\modules\inspircd20.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_cancel.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_check.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_del.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_help.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_info.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_list.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_read.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_rsend.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_send.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_sendall.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_set.dll"
  File "anope-1.8.5-MySQL\data\modules\ms_staff.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_access.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_alist.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_drop.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_forbid.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_getemail.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_getpass.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_ghost.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_group.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_help.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_identify.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_info.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_list.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_logout.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_maxemail.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_noop_convert.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_recover.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_register.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_release.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_saset.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_sendpass.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_set.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_status.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_suspend.dll"
  File "anope-1.8.5-MySQL\data\modules\ns_update.dll"
  File "anope-1.8.5-MySQL\data\modules\os_admin.dll"
  File "anope-1.8.5-MySQL\data\modules\os_akill.dll"
  File "anope-1.8.5-MySQL\data\modules\os_chankill.dll"
  File "anope-1.8.5-MySQL\data\modules\os_chanlist.dll"
  File "anope-1.8.5-MySQL\data\modules\os_clearmodes.dll"
  File "anope-1.8.5-MySQL\data\modules\os_defcon.dll"
  File "anope-1.8.5-MySQL\data\modules\os_global.dll"
  File "anope-1.8.5-MySQL\data\modules\os_help.dll"
  File "anope-1.8.5-MySQL\data\modules\os_ignore.dll"
  File "anope-1.8.5-MySQL\data\modules\os_ignore_db.dll"
  File "anope-1.8.5-MySQL\data\modules\os_info.dll"
  File "anope-1.8.5-MySQL\data\modules\os_jupe.dll"
  File "anope-1.8.5-MySQL\data\modules\os_kick.dll"
  File "anope-1.8.5-MySQL\data\modules\os_logonnews.dll"
  File "anope-1.8.5-MySQL\data\modules\os_mode.dll"
  File "anope-1.8.5-MySQL\data\modules\os_modinfo.dll"
  File "anope-1.8.5-MySQL\data\modules\os_modlist.dll"
  File "anope-1.8.5-MySQL\data\modules\os_modload.dll"
  File "anope-1.8.5-MySQL\data\modules\os_modunload.dll"
  File "anope-1.8.5-MySQL\data\modules\os_noop.dll"
  File "anope-1.8.5-MySQL\data\modules\os_oline.dll"
  File "anope-1.8.5-MySQL\data\modules\os_oper.dll"
  File "anope-1.8.5-MySQL\data\modules\os_opernews.dll"
  File "anope-1.8.5-MySQL\data\modules\os_quit.dll"
  File "anope-1.8.5-MySQL\data\modules\os_randomnews.dll"
  File "anope-1.8.5-MySQL\data\modules\os_raw.dll"
  File "anope-1.8.5-MySQL\data\modules\os_reload.dll"
  File "anope-1.8.5-MySQL\data\modules\os_restart.dll"
  File "anope-1.8.5-MySQL\data\modules\os_session.dll"
  File "anope-1.8.5-MySQL\data\modules\os_set.dll"
  File "anope-1.8.5-MySQL\data\modules\os_sgline.dll"
  File "anope-1.8.5-MySQL\data\modules\os_shutdown.dll"
  File "anope-1.8.5-MySQL\data\modules\os_sqline.dll"
  File "anope-1.8.5-MySQL\data\modules\os_staff.dll"
  File "anope-1.8.5-MySQL\data\modules\os_stats.dll"
  File "anope-1.8.5-MySQL\data\modules\os_svsnick.dll"
  File "anope-1.8.5-MySQL\data\modules\os_szline.dll"
  File "anope-1.8.5-MySQL\data\modules\os_umode.dll"
  File "anope-1.8.5-MySQL\data\modules\os_update.dll"
  File "anope-1.8.5-MySQL\data\modules\os_userlist.dll"
  File "anope-1.8.5-MySQL\data\modules\plexus2.dll"
  File "anope-1.8.5-MySQL\data\modules\plexus3.dll"
  File "anope-1.8.5-MySQL\data\modules\ptlink.dll"
  File "anope-1.8.5-MySQL\data\modules\rageircd.dll"
  File "anope-1.8.5-MySQL\data\modules\ratbox.dll"
  File "anope-1.8.5-MySQL\data\modules\shadowircd.dll"
  File "anope-1.8.5-MySQL\data\modules\solidircd.dll"
  File "anope-1.8.5-MySQL\data\modules\ultimate2.dll"
  File "anope-1.8.5-MySQL\data\modules\ultimate3.dll"
  File "anope-1.8.5-MySQL\data\modules\unreal31.dll"
  File "anope-1.8.5-MySQL\data\modules\unreal32.dll"
  File "anope-1.8.5-MySQL\data\modules\viagra.dll"
  SetOutPath "$INSTDIR\data\modules\runtime"
  SetOutPath "$INSTDIR\data"
  File "anope-1.8.5-MySQL\data\tables.sql"
  SetOutPath "$INSTDIR\docs"
  File "anope-1.8.5-MySQL\docs\BUGS.txt"
  File "anope-1.8.5-MySQL\docs\COPYING.txt"
  File "anope-1.8.5-MySQL\docs\DEFCON.txt"
  File "anope-1.8.5-MySQL\docs\EVENTS.txt"
  File "anope-1.8.5-MySQL\docs\FAQ.txt"
  File "anope-1.8.5-MySQL\docs\INSTALL.txt"
  File "anope-1.8.5-MySQL\docs\IRCD.txt"
  File "anope-1.8.5-MySQL\docs\MODULES.txt"
  File "anope-1.8.5-MySQL\docs\MYSQL.txt"
  File "anope-1.8.5-MySQL\docs\NEWS.txt"
  File "anope-1.8.5-MySQL\docs\OLDNEWS.txt"
  File "anope-1.8.5-MySQL\docs\OLDCHANGES.txt"
  File "anope-1.8.5-MySQL\docs\PROXY.txt"
  File "anope-1.8.5-MySQL\docs\README.txt"
  File "anope-1.8.5-MySQL\docs\WIN32.txt"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Anope\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Anope\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\anope.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\anope.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\docs\WIN32.txt"
  Delete "$INSTDIR\docs\README.txt"
  Delete "$INSTDIR\docs\PROXY.txt"
  Delete "$INSTDIR\docs\OLDCHANGES.txt"
  Delete "$INSTDIR\docs\OLDNEWS.txt"
  Delete "$INSTDIR\docs\NEWS.txt"
  Delete "$INSTDIR\docs\MYSQL.txt"
  Delete "$INSTDIR\docs\MODULES.txt"
  Delete "$INSTDIR\docs\IRCD.txt"
  Delete "$INSTDIR\docs\INSTALL.txt"
  Delete "$INSTDIR\docs\FAQ.txt"
  Delete "$INSTDIR\docs\EVENTS.txt"
  Delete "$INSTDIR\docs\DEFCON.txt"
  Delete "$INSTDIR\docs\COPYING.txt"
  Delete "$INSTDIR\docs\BUGS.txt"
  Delete "$INSTDIR\data\tables.sql"
  Delete "$INSTDIR\data\modules\viagra.dll"
  Delete "$INSTDIR\data\modules\unreal32.dll"
  Delete "$INSTDIR\data\modules\unreal31.dll"
  Delete "$INSTDIR\data\modules\ultimate3.dll"
  Delete "$INSTDIR\data\modules\ultimate2.dll"
  Delete "$INSTDIR\data\modules\solidircd.dll"
  Delete "$INSTDIR\data\modules\shadowircd.dll"
  Delete "$INSTDIR\data\modules\ratbox.dll"
  Delete "$INSTDIR\data\modules\rageircd.dll"
  Delete "$INSTDIR\data\modules\ptlink.dll"
  Delete "$INSTDIR\data\modules\plexus3.dll"
  Delete "$INSTDIR\data\modules\plexus2.dll"
  Delete "$INSTDIR\data\modules\os_userlist.dll"
  Delete "$INSTDIR\data\modules\os_update.dll"
  Delete "$INSTDIR\data\modules\os_umode.dll"
  Delete "$INSTDIR\data\modules\os_szline.dll"
  Delete "$INSTDIR\data\modules\os_svsnick.dll"
  Delete "$INSTDIR\data\modules\os_stats.dll"
  Delete "$INSTDIR\data\modules\os_staff.dll"
  Delete "$INSTDIR\data\modules\os_sqline.dll"
  Delete "$INSTDIR\data\modules\os_shutdown.dll"
  Delete "$INSTDIR\data\modules\os_sgline.dll"
  Delete "$INSTDIR\data\modules\os_set.dll"
  Delete "$INSTDIR\data\modules\os_session.dll"
  Delete "$INSTDIR\data\modules\os_restart.dll"
  Delete "$INSTDIR\data\modules\os_reload.dll"
  Delete "$INSTDIR\data\modules\os_raw.dll"
  Delete "$INSTDIR\data\modules\os_randomnews.dll"
  Delete "$INSTDIR\data\modules\os_quit.dll"
  Delete "$INSTDIR\data\modules\os_opernews.dll"
  Delete "$INSTDIR\data\modules\os_oper.dll"
  Delete "$INSTDIR\data\modules\os_oline.dll"
  Delete "$INSTDIR\data\modules\os_noop.dll"
  Delete "$INSTDIR\data\modules\os_modunload.dll"
  Delete "$INSTDIR\data\modules\os_modload.dll"
  Delete "$INSTDIR\data\modules\os_modlist.dll"
  Delete "$INSTDIR\data\modules\os_modinfo.dll"
  Delete "$INSTDIR\data\modules\os_mode.dll"
  Delete "$INSTDIR\data\modules\os_logonnews.dll"
  Delete "$INSTDIR\data\modules\os_kick.dll"
  Delete "$INSTDIR\data\modules\os_jupe.dll"
  Delete "$INSTDIR\data\modules\os_info.dll"
  Delete "$INSTDIR\data\modules\os_ignore_db.dll"
  Delete "$INSTDIR\data\modules\os_ignore.dll"
  Delete "$INSTDIR\data\modules\os_help.dll"
  Delete "$INSTDIR\data\modules\os_global.dll"
  Delete "$INSTDIR\data\modules\os_defcon.dll"
  Delete "$INSTDIR\data\modules\os_clearmodes.dll"
  Delete "$INSTDIR\data\modules\os_chanlist.dll"
  Delete "$INSTDIR\data\modules\os_chankill.dll"
  Delete "$INSTDIR\data\modules\os_akill.dll"
  Delete "$INSTDIR\data\modules\os_admin.dll"
  Delete "$INSTDIR\data\modules\ns_update.dll"
  Delete "$INSTDIR\data\modules\ns_suspend.dll"
  Delete "$INSTDIR\data\modules\ns_status.dll"
  Delete "$INSTDIR\data\modules\ns_set.dll"
  Delete "$INSTDIR\data\modules\ns_sendpass.dll"
  Delete "$INSTDIR\data\modules\ns_saset.dll"
  Delete "$INSTDIR\data\modules\ns_release.dll"
  Delete "$INSTDIR\data\modules\ns_register.dll"
  Delete "$INSTDIR\data\modules\ns_recover.dll"
  Delete "$INSTDIR\data\modules\ns_noop_convert.dll"
  Delete "$INSTDIR\data\modules\ns_maxemail.dll"
  Delete "$INSTDIR\data\modules\ns_logout.dll"
  Delete "$INSTDIR\data\modules\ns_list.dll"
  Delete "$INSTDIR\data\modules\ns_info.dll"
  Delete "$INSTDIR\data\modules\ns_identify.dll"
  Delete "$INSTDIR\data\modules\ns_help.dll"
  Delete "$INSTDIR\data\modules\ns_group.dll"
  Delete "$INSTDIR\data\modules\ns_ghost.dll"
  Delete "$INSTDIR\data\modules\ns_getpass.dll"
  Delete "$INSTDIR\data\modules\ns_getemail.dll"
  Delete "$INSTDIR\data\modules\ns_forbid.dll"
  Delete "$INSTDIR\data\modules\ns_drop.dll"
  Delete "$INSTDIR\data\modules\ns_alist.dll"
  Delete "$INSTDIR\data\modules\ns_access.dll"
  Delete "$INSTDIR\data\modules\ms_staff.dll"
  Delete "$INSTDIR\data\modules\ms_set.dll"
  Delete "$INSTDIR\data\modules\ms_sendall.dll"
  Delete "$INSTDIR\data\modules\ms_send.dll"
  Delete "$INSTDIR\data\modules\ms_rsend.dll"
  Delete "$INSTDIR\data\modules\ms_read.dll"
  Delete "$INSTDIR\data\modules\ms_list.dll"
  Delete "$INSTDIR\data\modules\ms_info.dll"
  Delete "$INSTDIR\data\modules\ms_help.dll"
  Delete "$INSTDIR\data\modules\ms_del.dll"
  Delete "$INSTDIR\data\modules\ms_check.dll"
  Delete "$INSTDIR\data\modules\ms_cancel.dll"
  Delete "$INSTDIR\data\modules\inspircd11.dll"
  Delete "$INSTDIR\data\modules\inspircd12.dll"
  Delete "$INSTDIR\data\modules\inspircd20.dll"
  Delete "$INSTDIR\data\modules\hybrid.dll"
  Delete "$INSTDIR\data\modules\hs_setall.dll"
  Delete "$INSTDIR\data\modules\hs_set.dll"
  Delete "$INSTDIR\data\modules\hs_request.dll"
  Delete "$INSTDIR\data\modules\hs_on.dll"
  Delete "$INSTDIR\data\modules\hs_off.dll"
  Delete "$INSTDIR\data\modules\hs_list.dll"
  Delete "$INSTDIR\data\modules\hs_help.dll"
  Delete "$INSTDIR\data\modules\hs_group.dll"
  Delete "$INSTDIR\data\modules\hs_delall.dll"
  Delete "$INSTDIR\data\modules\hs_del.dll"
  Delete "$INSTDIR\data\modules\he_help.dll"
  Delete "$INSTDIR\data\modules\enc_old.dll"
  Delete "$INSTDIR\data\modules\enc_none.dll"
  Delete "$INSTDIR\data\modules\enc_md5.dll"
  Delete "$INSTDIR\data\modules\enc_sha1.dll"
  Delete "$INSTDIR\data\modules\dreamforge.dll"
  Delete "$INSTDIR\data\modules\cs_xop.dll"
  Delete "$INSTDIR\data\modules\cs_topic.dll"
  Delete "$INSTDIR\data\modules\cs_tban.dll"
  Delete "$INSTDIR\data\modules\cs_suspend.dll"
  Delete "$INSTDIR\data\modules\cs_status.dll"
  Delete "$INSTDIR\data\modules\cs_set.dll"
  Delete "$INSTDIR\data\modules\cs_sendpass.dll"
  Delete "$INSTDIR\data\modules\cs_register.dll"
  Delete "$INSTDIR\data\modules\cs_modes.dll"
  Delete "$INSTDIR\data\modules\cs_logout.dll"
  Delete "$INSTDIR\data\modules\cs_list.dll"
  Delete "$INSTDIR\data\modules\cs_kick.dll"
  Delete "$INSTDIR\data\modules\cs_invite.dll"
  Delete "$INSTDIR\data\modules\cs_info.dll"
  Delete "$INSTDIR\data\modules\cs_identify.dll"
  Delete "$INSTDIR\data\modules\cs_help.dll"
  Delete "$INSTDIR\data\modules\cs_getpass.dll"
  Delete "$INSTDIR\data\modules\cs_getkey.dll"
  Delete "$INSTDIR\data\modules\cs_forbid.dll"
  Delete "$INSTDIR\data\modules\cs_enforce.dll"
  Delete "$INSTDIR\data\modules\cs_drop.dll"
  Delete "$INSTDIR\data\modules\cs_clear.dll"
  Delete "$INSTDIR\data\modules\cs_ban.dll"
  Delete "$INSTDIR\data\modules\cs_appendtopic.dll"
  Delete "$INSTDIR\data\modules\cs_akick.dll"
  Delete "$INSTDIR\data\modules\cs_access.dll"
  Delete "$INSTDIR\data\modules\charybdis.dll"
  Delete "$INSTDIR\data\modules\bs_unassign.dll"
  Delete "$INSTDIR\data\modules\bs_set.dll"
  Delete "$INSTDIR\data\modules\bs_say.dll"
  Delete "$INSTDIR\data\modules\bs_kick.dll"
  Delete "$INSTDIR\data\modules\bs_info.dll"
  Delete "$INSTDIR\data\modules\bs_help.dll"
  Delete "$INSTDIR\data\modules\bs_fantasy_unban.dll"
  Delete "$INSTDIR\data\modules\bs_fantasy_seen.dll"
  Delete "$INSTDIR\data\modules\bs_fantasy_owner.dll"
  Delete "$INSTDIR\data\modules\bs_fantasy_kickban.dll"
  Delete "$INSTDIR\data\modules\bs_fantasy_kick.dll"
  Delete "$INSTDIR\data\modules\bs_fantasy.dll"
  Delete "$INSTDIR\data\modules\bs_botlist.dll"
  Delete "$INSTDIR\data\modules\bs_bot.dll"
  Delete "$INSTDIR\data\modules\bs_badwords.dll"
  Delete "$INSTDIR\data\modules\bs_assign.dll"
  Delete "$INSTDIR\data\modules\bs_act.dll"
  Delete "$INSTDIR\data\modules\bahamut.dll"
  Delete "$INSTDIR\data\languages\tr"
  Delete "$INSTDIR\data\languages\ru"
  Delete "$INSTDIR\data\languages\pt"
  Delete "$INSTDIR\data\languages\pl"
  Delete "$INSTDIR\data\languages\nl"
  Delete "$INSTDIR\data\languages\it"
  Delete "$INSTDIR\data\languages\hun"
  Delete "$INSTDIR\data\languages\gr"
  Delete "$INSTDIR\data\languages\fr"
  Delete "$INSTDIR\data\languages\es"
  Delete "$INSTDIR\data\languages\en_us"
  Delete "$INSTDIR\data\languages\de"
  Delete "$INSTDIR\data\languages\cat"
  Delete "$INSTDIR\data\example.conf"
  Delete "$INSTDIR\data\epona2anope.exe.manifest"
  Delete "$INSTDIR\data\epona2anope.exe"
  Delete "$INSTDIR\data\db-merger.exe.manifest"
  Delete "$INSTDIR\data\db-merger.exe"
  Delete "$INSTDIR\data\bin\register"
  Delete "$INSTDIR\data\bin\mydbgen"
  Delete "$INSTDIR\data\bin\langtool"
  Delete "$INSTDIR\data\bin\cp-recursive"
  Delete "$INSTDIR\data\bin\anoperc.in"
  Delete "$INSTDIR\data\bin\am"
  Delete "$INSTDIR\data\anopesmtp.exe.manifest"
  Delete "$INSTDIR\data\anopesmtp.exe"
  Delete "$INSTDIR\Changes.txt"
  Delete "$INSTDIR\Changes.mysql.txt"
  Delete "$INSTDIR\Changes.lang.txt"
  Delete "$INSTDIR\Changes.conf.txt"
  Delete "$INSTDIR\anope.exe.manifest"
  Delete "$INSTDIR\anope.exe"
Delete "$INSTDIR\anope.bat"
  SetShellVarContext all

  Delete "$SMPROGRAMS\Anope\Uninstall.lnk"
  Delete "$SMPROGRAMS\Anope\Website.lnk"
  Delete "$DESKTOP\Anope IRC Services.lnk"
  Delete "$SMPROGRAMS\Anope\Anope IRC Services.lnk"
  Delete "$SMPROGRAMS\Anope\Advanced\Anope IRC Services (Debug and Window Logging).lnk"
  Delete "$SMPROGRAMS\Anope\Advanced\Anope IRC Services (Window Logging).lnk"
  Delete "$SMPROGRAMS\Anope\Advanced\Anope IRC Services (No Third Party Modules).lnk"

RMDir "$SMPROGRAMS\Anope\Advanced"

  RMDir "$SMPROGRAMS\Anope"
  RMDir "$INSTDIR\docs"
  RMDir "$INSTDIR\data\modules\runtime"
  RMDir "$INSTDIR\data\modules"
  RMDir "$INSTDIR\data\logs"
  RMDir "$INSTDIR\data\languages"
  RMDir "$INSTDIR\data\bin"
  RMDir	"$INSTDIR\data\backups"
  RMDir "$INSTDIR\data"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
