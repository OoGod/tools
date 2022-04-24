log show --predicate 'process == "kernel"' --debug --last 10m > ~/Desktop/kernel.log
log stream|grep date > a.log
echo "
022-04-24 14:49:32.229565+0800 0x49d635   Activity    0x6dbf22             19589  0    com.apple.preference.datetime.remoteservice: (AppKit) trackMouse send action on mouseUp
2022-04-24 14:49:32.229670+0800 0x49d635   Activity    0x6dbf23             19589  0    com.apple.preference.datetime.remoteservice: (AppKit) sendActionFrom:
2022-04-24 14:49:32.239069+0800 0x49f823   Default     0x6dbf23             600    0    authd: [com.apple.Authorization:authd] Validating credential zhoushihao (501) for system.preferences.datetime (engine 869)
2022-04-24 14:49:32.239169+0800 0x49f823   Default     0x6dbf23             600    0    authd: [com.apple.Authorization:authd] Succeeded authorizing right 'system.preferences.datetime' by client '/System/Library/PreferencePanes/DateAndTime.prefPane/Contents/XPCServices/com.apple.preference.datetime.remoteservice.xpc' [19589] for authorization created by '/System/Library/PreferencePanes/DateAndTime.prefPane/Contents/XPCServices/com.apple.preference.datetime.remoteservice.xpc' [19589] (2,0) (engine 869)
2022-04-24 14:49:32.245053+0800 0x49f823   Default     0x6dbf23             600    0    authd: [com.apple.Authorization:authd] Succeeded authorizing right 'system.preferences' by client '/System/Library/PrivateFrameworks/SystemAdministration.framework/XPCServices/writeconfig.xpc' [19584] for authorization created by '/System/Library/PreferencePanes/DateAndTime.prefPane/Contents/XPCServices/com.apple.preference.datetime.remoteservice.xpc' [19589] (2,0) (engine 870)
"
