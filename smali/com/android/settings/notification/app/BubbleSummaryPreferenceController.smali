.class public Lcom/android/settings/notification/app/BubbleSummaryPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "BubbleSummaryPreferenceController.java"


# static fields
.field static final ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private isGloballyEnabled()Z
    .locals 2

    .line 102
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_bubbles"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_pref_link"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 91
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/android/settings/notification/app/BubbleSummaryPreferenceController;->isGloballyEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    .line 95
    sget p0, Lcom/android/settings/R$string;->bubble_app_setting_all:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_2
    sget p0, Lcom/android/settings/R$string;->bubble_app_setting_selected:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_3
    :goto_0
    sget p0, Lcom/android/settings/R$string;->bubble_app_setting_none:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 49
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    return v1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 56
    invoke-direct {p0}, Lcom/android/settings/notification/app/BubbleSummaryPreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 62
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 65
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/notification/app/BubbleSummaryPreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v3, p0}, Lcom/android/settings/notification/NotificationBackend;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
