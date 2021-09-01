.class public Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultSmsPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;
    }
.end annotation


# instance fields
.field private mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 66
    :try_start_0
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {v4, v0, v5, v6, v3}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected bridge synthetic getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->isPackageDirectBootAware(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->direct_boot_unaware_dialog_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;->getDefaultApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x315

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 53
    sget p0, Lcom/android/settings/R$xml;->default_sms_settings:I

    return p0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;->setDefaultApplication(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
