.class public Lcom/android/settings/notification/app/AppLinkPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "AppLinkPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "app_link"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
