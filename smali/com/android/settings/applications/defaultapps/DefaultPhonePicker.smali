.class public Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultPhonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;
    }
.end annotation


# instance fields
.field private mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-static {v1, v2}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    :try_start_0
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x314

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 57
    sget p0, Lcom/android/settings/R$xml;->default_phone_settings:I

    return p0
.end method

.method protected getSystemDefaultKey()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;

    const-string v1, "telecom"

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;-><init>(Landroid/telecom/TelecomManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
