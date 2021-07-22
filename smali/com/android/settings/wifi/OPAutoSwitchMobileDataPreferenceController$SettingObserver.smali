.class Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OPAutoSwitchMobileDataPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;

    .line 160
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "wifi_auto_change_to_mobile_data"

    .line 155
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

    .line 161
    iput-object p2, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 174
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
