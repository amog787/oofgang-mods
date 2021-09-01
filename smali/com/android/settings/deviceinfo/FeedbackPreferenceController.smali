.class public Lcom/android/settings/deviceinfo/FeedbackPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FeedbackPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final mHost:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.BUG_REPORT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "device_feedback"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_feedback"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    .line 57
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 59
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method
