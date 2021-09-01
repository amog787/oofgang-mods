.class public Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;
.super Ljava/lang/Object;
.source "AboutPhonePresenter.java"


# instance fields
.field private isSimLock:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;

.field private mView:Lcom/oneplus/settings/aboutphone/Contract$View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/oneplus/settings/aboutphone/Contract$View;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPNetworkUnlockUtils;->getNetworkUnlockStatus(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isSimLock:Z

    .line 81
    iput-object p3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    .line 82
    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    .line 84
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    .line 85
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 88
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string p3, "no_debugging_features"

    .line 86
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 90
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 91
    :goto_0
    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    .line 92
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 93
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    return-void
.end method

.method private addAndroidVersion()V
    .locals 3

    .line 327
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 328
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->firmware_version:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_in_project_android_version:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_in_project_android_version:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    :goto_0
    sget v1, Lcom/android/settings/R$drawable;->op_android_version:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.android.FirmwareVersionDialogFragment"

    .line 335
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAuthenticationInfo()V
    .locals 7

    .line 250
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_regulatory_information:I

    .line 252
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    sget v1, Lcom/android/settings/R$drawable;->op_authentication_information:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 256
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->oneplus_model_for_china_and_india:I

    .line 257
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "com.oneplus.intent.OPAuthenticationInformationSettings"

    const-string v4, "android.settings.SHOW_REGULATORY_INFO"

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A6000"

    .line 259
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A5010"

    .line 261
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A5000"

    .line 263
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 272
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_for_europe_and_america:I

    .line 273
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A6003"

    .line 275
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 278
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 288
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18821_for_eu:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_18865_for_eu:I

    .line 289
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19801_for_eu:I

    .line 290
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_eu:I

    .line 291
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18821_for_us:I

    .line 292
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18831_for_us:I

    .line 293
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_us:I

    .line 294
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18825_for_us:I

    .line 295
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_ee145:I

    .line 296
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19801_for_us:I

    .line 297
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_18865_for_us:I

    .line 298
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_18865_for_tmo:I

    .line 299
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19861_for_tmo:I

    .line 300
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19863_for_tmo:I

    .line 301
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19855_for_tmo:I

    .line 302
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19821_for_us:I

    .line 303
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19867_for_vzw:I

    .line 304
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19811_for_us:I

    .line 305
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_kebabt:I

    .line 306
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_kebab_for_03:I

    .line 307
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_kebab_for_01:I

    .line 308
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_kebab_for_04:I

    .line 309
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_avicii_for_us:I

    .line 310
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 313
    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 314
    invoke-static {v1}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isNeedShowAuthenticationInformation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 316
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_authentication_information:I

    .line 317
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_b
    move-object v3, v2

    goto :goto_5

    .line 312
    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_d
    :goto_1
    const-string v1, "ro.rf_version"

    .line 279
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Am"

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 282
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    .line 285
    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_authentication_information:I

    .line 286
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    .line 277
    :cond_f
    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 264
    :cond_10
    :goto_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 266
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v3, v4

    goto :goto_5

    .line 269
    :cond_11
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_authentication_information:I

    .line 270
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 320
    :goto_5
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAwardInfo()V
    .locals 3

    .line 436
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_forum_award_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_o2_contributors:I

    .line 440
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_h2_contributors:I

    .line 443
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    :goto_0
    sget v1, Lcom/android/settings/R$drawable;->op_award_icon:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.OPForumContributorsActivity"

    .line 446
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 447
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDeviceModel()V
    .locals 5

    .line 401
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 402
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->model_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 403
    sget v1, Lcom/android/settings/R$drawable;->op_model:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v1, 0x0

    .line 404
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 405
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A60"

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_product_for_us:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_product_for_us:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 412
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 407
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONEPLUS\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "ONEPLUS "

    const-string v4, ""

    .line 408
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 414
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDeviceName()V
    .locals 3

    .line 231
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->my_device_info_device_name_preference_title:I

    .line 234
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 236
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    .line 235
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEF009Project()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isContainSymbol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getSymbolDeviceName(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    sget v1, Lcom/android/settings/R$drawable;->op_device_name:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.OPDeviceNameActivity"

    .line 245
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 246
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addHardwareVersion()V
    .locals 4

    .line 511
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 512
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->onplus_hardware_version_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 513
    sget v1, Lcom/android/settings/R$drawable;->op_hardware_icon:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 515
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.boot.hw_version"

    .line 517
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->initHwId()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 524
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    if-gt v2, v3, :cond_1

    .line 527
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v1, "15"

    .line 529
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 532
    :cond_2
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v1, 0x0

    .line 534
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 535
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLegalInfo()V
    .locals 3

    .line 418
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->legal_information:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_legal_summary:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    sget v1, Lcom/android/settings/R$drawable;->op_legal_settings:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.LegalSettingsActivity"

    .line 422
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 423
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOneplusSystemVersion()V
    .locals 8

    .line 340
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 344
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string v2, "ro.rom.version"

    if-eqz v1, :cond_2

    .line 345
    sget v1, Lcom/android/settings/R$drawable;->op_o2_version:I

    .line 346
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->oneplus_oxygen_version:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "ro.oxygen.version"

    .line 355
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 357
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "O2"

    const-string v5, "O\u2082"

    .line 358
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 361
    :cond_2
    sget v1, Lcom/android/settings/R$drawable;->op_h2_version:I

    .line 362
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->oneplus_hydrogen_version:I

    .line 363
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H2"

    const-string v5, "H\u2082"

    .line 364
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 365
    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 367
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 371
    :goto_1
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v1, 0x0

    .line 374
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 376
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProductIntroduce()V
    .locals 3

    .line 451
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_product_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_product_info_summary:I

    .line 454
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    sget v1, Lcom/android/settings/R$drawable;->op_product_info:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.action.PRODUCT_INFO"

    .line 456
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 457
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSoftwareVersion()V
    .locals 7

    .line 462
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 463
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->onplus_software_version_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 464
    sget v1, Lcom/android/settings/R$drawable;->op_software_icon:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 465
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v2

    const-string v3, "ro.rom.version"

    if-eqz v2, :cond_4

    .line 468
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ro.build.display.id"

    .line 472
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "_"

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 475
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 476
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ro.boot.hw_version"

    .line 478
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "hw_version_ui"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 484
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xd

    if-le v2, v5, :cond_1

    const-string v1, "15"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 488
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v1, v2

    goto :goto_2

    .line 495
    :cond_3
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 498
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->oneplus_model_product_for_us:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 500
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "build.number"

    .line 506
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 507
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addStatusInfo()V
    .locals 3

    .line 427
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->device_status:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_status_summary:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    sget v1, Lcom/android/settings/R$drawable;->op_status_settings:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.MyDeviceInfoFragmentActivity"

    .line 431
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 432
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addVersionNumber()V
    .locals 4

    .line 380
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 381
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->build_number:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.rom.version"

    .line 387
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "enchilada"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "fajita"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    sget v1, Lcom/android/settings/R$drawable;->op_soft_version:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "build.number"

    .line 396
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 397
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCameraInfo()Ljava/lang/String;
    .locals 2

    .line 669
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_avicii_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showKebabInfomation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_kebab_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 673
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 675
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8pro_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 677
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 679
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 680
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_3t_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 681
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 682
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_3_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 683
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 684
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_18857_camera_info:I

    .line 685
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 686
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is7TProProducts()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 688
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_9

    .line 689
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_hd_project_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 690
    :cond_9
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP_19_2nd()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_a

    .line 691
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_19_2nd_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_a
    const-string p0, "none"

    goto :goto_3

    .line 687
    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_7_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_c
    :goto_1
    const-string p0, "16 + 20 MP Dual Camera"

    goto :goto_3

    .line 674
    :cond_d
    :goto_2
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 2

    .line 570
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_avicii_series_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showKebabInfomation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_kebab_series_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 574
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_b

    .line 575
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 577
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Snapdragon\u2122 845"

    goto/16 :goto_1

    .line 579
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Snapdragon\u2122 835"

    goto/16 :goto_1

    .line 581
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Snapdragon\u2122 821"

    goto :goto_1

    .line 583
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Snapdragon\u2122 820"

    goto :goto_1

    .line 585
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Snapdragon\u2122 855"

    goto :goto_1

    .line 587
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_8

    .line 588
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_hd_project_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 589
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP_19_2nd()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_9

    .line 590
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_19_2nd_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 591
    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$string;->oneplus_in_project_series_cpu_info:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 592
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_series_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_a
    const-string p0, "none"

    goto :goto_1

    .line 576
    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8_series_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getScreenInfo()Ljava/lang/String;
    .locals 2

    .line 640
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_avicii_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showKebabInfomation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_kebab_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    .line 644
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 646
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8pro_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    .line 648
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 651
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 652
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_6_01_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    .line 653
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 655
    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6013"

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 657
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 659
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is7TProProducts()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 661
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_9

    .line 662
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_hd_project_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_9
    const-string p0, "none"

    goto :goto_5

    .line 660
    :cond_a
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_7_pro_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 658
    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_6_41_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 654
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_5_5_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 650
    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_6_28_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 645
    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method private static getTotalMemory()Ljava/lang/String;
    .locals 4

    const-string v0, "/proc/meminfo"

    const/4 v1, 0x0

    .line 624
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 626
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 627
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 629
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 635
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static is7TMCLVersionProject()Z
    .locals 3

    .line 118
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19861_for_tmo:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_cn:I

    .line 119
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_in:I

    .line 120
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_eu:I

    .line 121
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_us:I

    .line 122
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isGuaLiftCameraProject()Z
    .locals 5

    .line 105
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 106
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_guacamole_lift_camera_project:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 108
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 109
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private showHardwareInfo()V
    .locals 7

    .line 131
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget v0, Lcom/android/settings/R$drawable;->oneplus_avicii:I

    :goto_0
    move v2, v0

    goto/16 :goto_3

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showKebabInfomation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget v0, Lcom/android/settings/R$drawable;->oneplus_kebab:I

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget v0, Lcom/android/settings/R$drawable;->oneplus_8_pro:I

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 140
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEightSeriesProducts()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    sget v0, Lcom/android/settings/R$drawable;->oneplus_other:I

    goto :goto_0

    .line 143
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->is7TMCLVersionProject()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    sget v0, Lcom/android/settings/R$drawable;->hd_mcl:I

    goto :goto_0

    .line 145
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is7TProducts()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    sget v0, Lcom/android/settings/R$drawable;->oneplus_7t:I

    goto :goto_0

    .line 147
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is7TProProducts()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    sget v0, Lcom/android/settings/R$drawable;->oneplus_7t_pro:I

    goto :goto_0

    .line 149
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_8

    .line 150
    sget v0, Lcom/android/settings/R$drawable;->oneplus_other:I

    goto :goto_0

    .line 151
    :cond_8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 154
    :cond_9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 155
    sget v0, Lcom/android/settings/R$drawable;->oneplus_5:I

    goto/16 :goto_0

    .line 156
    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    sget v0, Lcom/android/settings/R$drawable;->oneplus_5t:I

    goto/16 :goto_0

    .line 158
    :cond_b
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 159
    sget v0, Lcom/android/settings/R$drawable;->oneplus_3:I

    goto/16 :goto_0

    .line 160
    :cond_c
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 161
    sget v0, Lcom/android/settings/R$drawable;->oneplus_3t:I

    goto/16 :goto_0

    .line 162
    :cond_d
    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isGuaLiftCameraProject()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 163
    sget v0, Lcom/android/settings/R$drawable;->oneplus_gua_lift_camera:I

    goto/16 :goto_0

    .line 164
    :cond_e
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 165
    sget v0, Lcom/android/settings/R$drawable;->oneplus_18857:I

    goto/16 :goto_0

    .line 166
    :cond_f
    invoke-static {}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_10

    .line 167
    sget v0, Lcom/android/settings/R$drawable;->oneplus_other:I

    goto/16 :goto_0

    .line 169
    :cond_10
    sget v0, Lcom/android/settings/R$drawable;->oneplus_6:I

    goto/16 :goto_0

    .line 153
    :cond_11
    :goto_1
    sget v0, Lcom/android/settings/R$drawable;->oneplus_6:I

    goto/16 :goto_0

    .line 139
    :cond_12
    :goto_2
    sget v0, Lcom/android/settings/R$drawable;->oneplus_8:I

    goto/16 :goto_0

    .line 171
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getCameraInfo()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getCpuName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getScreenInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getTotalMemory()Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-interface/range {v1 .. v6}, Lcom/oneplus/settings/aboutphone/Contract$View;->displayHardWarePreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showKebabInfomation()Z
    .locals 1

    .line 541
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_project_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ro.boot.project_codename"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private showSoftwareInfo()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addDeviceName()V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 183
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isNeedAddAuthenticationInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAuthenticationInfo()V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAndroidVersion()V

    .line 189
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addOneplusSystemVersion()V

    .line 194
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addVersionNumber()V

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addDeviceModel()V

    .line 199
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addLegalInfo()V

    .line 200
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addStatusInfo()V

    .line 202
    invoke-static {}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_5

    .line 203
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 206
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    .line 207
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_1

    .line 204
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_1

    .line 210
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_6

    .line 211
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    .line 216
    :cond_6
    :goto_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addSoftwareVersion()V

    .line 219
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addHardwareVersion()V

    .line 223
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    iget-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isSimLock:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addNetworkUnlock(Ljava/lang/Boolean;)V

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/oneplus/settings/aboutphone/Contract$View;->displaySoftWarePreference(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addNetworkUnlock(Ljava/lang/Boolean;)V
    .locals 3

    .line 546
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 547
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_network_unlock:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    sget v1, Lcom/android/settings/R$drawable;->ic_network_locked:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 550
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_unlock_status_locked:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 552
    :cond_0
    sget v1, Lcom/android/settings/R$drawable;->ic_network_unlock:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 553
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_unlock_status_unlock:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 555
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNetworkUnlock simLockStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AboutPhonePresenter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "intent_network_unlock"

    .line 556
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 557
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableDevelopmentSettings()V
    .locals 2

    const/4 v0, 0x0

    .line 700
    iput v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    .line 701
    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    .line 702
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 704
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    .line 706
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->performHapticFeedback()V

    .line 710
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    sget v0, Lcom/android/settings/R$string;->show_dev_on:I

    invoke-interface {p0, v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 715
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    .line 716
    invoke-virtual {p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->getIntent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v0, ""

    .line 717
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.android.FirmwareVersionDialogFragment"

    .line 721
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-class p1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    .line 723
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x270f

    .line 722
    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "build.number"

    .line 725
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 726
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 730
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 734
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 737
    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    const-string v0, "no_debugging_features"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 738
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 741
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 742
    invoke-static {p1}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 744
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 745
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    .line 746
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 748
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 749
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 752
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 757
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v0, :cond_6

    .line 759
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 763
    :cond_6
    iget p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez p1, :cond_8

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 764
    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-nez p1, :cond_7

    .line 765
    iget-boolean v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez v2, :cond_7

    add-int/2addr p1, v0

    .line 767
    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    .line 768
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x64

    .line 770
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 774
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez p1, :cond_d

    .line 776
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->enableDevelopmentSettings()V

    goto/16 :goto_0

    .line 778
    :cond_7
    iget p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez p1, :cond_d

    const/4 v2, 0x5

    if-ge p1, v2, :cond_d

    .line 780
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    .line 781
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->show_dev_countdown:I

    iget p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 783
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    .line 782
    invoke-virtual {v2, v3, p0, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 781
    invoke-interface {p1, p0}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-gez p1, :cond_d

    .line 786
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    .line 787
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    sget p1, Lcom/android/settings/R$string;->show_dev_already:I

    invoke-interface {p0, p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    goto :goto_0

    :cond_9
    const-string v0, "intent_network_unlock"

    .line 789
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 791
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPNetworkUnlockUtils;->getUnlockAppEnabledStatus(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 793
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.tmobile.rsuapp"

    const-string v1, "com.tmobile.rsuapp.MainActivity"

    .line 794
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 800
    :cond_a
    iget-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isSimLock:Z

    if-eqz p1, :cond_b

    .line 801
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->op_sim_lock_summary:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 803
    :cond_b
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->op_sim_unlock_summary:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 808
    :cond_c
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showHardwareInfo()V

    .line 101
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showSoftwareInfo()V

    return-void
.end method

.method public updateNetworkUnlockStatus(Ljava/lang/Boolean;)V
    .locals 2

    .line 561
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isSimLock:Z

    if-eq v0, v1, :cond_0

    .line 562
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isSimLock:Z

    .line 564
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNetworkUnlockStatus simLockStatus = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AboutPhonePresenter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
