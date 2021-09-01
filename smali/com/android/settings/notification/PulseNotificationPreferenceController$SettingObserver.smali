.class Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "PulseNotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/PulseNotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/PulseNotificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/PulseNotificationPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/PulseNotificationPreferenceController;

    .line 97
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "notification_light_pulse"

    .line 92
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 98
    iput-object p2, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/PulseNotificationPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 103
    iget-object p2, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
