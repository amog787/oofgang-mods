.class Lcom/oneplus/settings/utils/OPUtils$1;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAllSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string p0, "OPUtils"

    const-string v0, "sendAppTrackerForAllSettings for device boot."

    .line 1014
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForOhpdForceStopEnabled(Landroid/content/Context;)V

    .line 1019
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForTrueColor()V

    .line 1022
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1026
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_auto_face_unlock_enable"

    const/4 v1, 0x0

    .line 1024
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "auto_face_unlock"

    .line 1022
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1031
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1033
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_acc_sensor_three_finger"

    .line 1031
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "op_three_key_screenshots_enabled"

    .line 1035
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1039
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGestureAndButton()V

    .line 1042
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAssistantAPP()V

    .line 1045
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1047
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_camera_notch_ignore"

    .line 1045
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "notch_display"

    .line 1049
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1052
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunchToggle()V

    .line 1053
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    .line 1056
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForFodAnimStyle()V

    .line 1058
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoBrightness()V

    .line 1059
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForBrightness()V

    .line 1060
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoNightMode()V

    .line 1061
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForNightMode()V

    .line 1062
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForEffectStrength()V

    .line 1063
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1065
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "read_mode_apps"

    .line 1063
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeApps(Ljava/lang/String;)V

    .line 1066
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeNotification()V

    .line 1067
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingMode()V

    .line 1068
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenColorMode()V

    .line 1069
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenCustomColorMode()V

    .line 1070
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForThemes()V

    .line 1071
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAccentColor()V

    .line 1072
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAssistApp()V

    .line 1073
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForDefaultHomeApp()V

    .line 1074
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeSpeakerAnswer()V

    .line 1075
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNotificationShow()V

    .line 1076
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameMode3drPartyCalls()V

    .line 1077
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeAdEnable()V

    .line 1078
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeBrightness()V

    .line 1079
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNetWorkBoost()V

    .line 1080
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1082
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "game_mode_apps"

    .line 1080
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeApps(Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeRemovedApps()V

    .line 1086
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForSmartWifiSwitch()V

    .line 1087
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForDataAutoSwitch()V

    .line 1088
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReply()V

    .line 1090
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyIMStatus()V

    .line 1091
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyKeyboardStatus()V

    .line 1093
    invoke-static {}, Lcom/oneplus/settings/better/OPHapticFeedback;->sendDefaultAppTracker()V

    .line 1094
    invoke-static {}, Lcom/oneplus/settings/system/OPRamBoostSettings;->sendDefaultAppTracker()V

    .line 1095
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1099
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_face_unlock_powerkey_recognize_enable"

    .line 1097
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "pop_up_face_unlock"

    .line 1095
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1103
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForHorizonLightAnimStyle()V

    .line 1104
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForClockStyle()V

    .line 1108
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendDisplaySettingsAnalytics()V

    .line 1109
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->access$000(Landroid/content/Context;)V

    .line 1110
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->access$100(Landroid/content/Context;)V

    .line 1111
    invoke-static {}, Lcom/oneplus/settings/system/OPRamBoostSettings;->sendRamboostAppTracker()V

    return-void
.end method
