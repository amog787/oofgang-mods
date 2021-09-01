.class public Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "InteractAcrossProfilesDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppLabel:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

.field private mHeader:Lcom/android/settingslib/widget/LayoutPreference;

.field private mInstallAppIntent:Landroid/content/Intent;

.field private mInstallBanner:Lcom/android/settings/widget/CardPreference;

.field private mInstalledInPersonal:Z

.field private mInstalledInWork:Z

.field private mIsPageLaunchedByApp:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonalProfile:Landroid/os/UserHandle;

.field private mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkProfile:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->enableInteractAcrossProfiles(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mIsPageLaunchedByApp:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;Z)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(Z)V

    return-void
.end method

.method private addAppTitleAndIcons(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header_title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header_icon_personal:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 186
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 188
    iget-boolean v1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInPersonal:Z

    if-nez v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->createSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 191
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->entity_header_icon_work:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 196
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 198
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 199
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInWork:Z

    if-nez v0, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->createSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method private createSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .locals 3

    .line 217
    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 218
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 219
    aput v2, v0, v1

    const/4 v1, 0x6

    .line 220
    aput v2, v0, v1

    const/16 v1, 0xc

    .line 221
    aput v2, v0, v1

    const/16 v1, 0x7f

    int-to-float v1, v1

    const/4 v2, 0x4

    .line 222
    aput v1, v0, v2

    const/16 v2, 0x9

    .line 223
    aput v1, v0, v2

    const/16 v2, 0xe

    .line 224
    aput v1, v0, v2

    .line 226
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 228
    invoke-virtual {v0, p0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 229
    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object p0
.end method

.method private disableSwitchPref()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->interact_across_profiles_switch_disabled:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header_swap_horiz:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 473
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_swap_horiz_grey:I

    .line 474
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 473
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private enableInteractAcrossProfiles(Z)V
    .locals 1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/CrossProfileApps;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 343
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private enableSwitchPref()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->interact_across_profiles_switch_enabled:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header_swap_horiz:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 463
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_swap_horiz_blue:I

    .line 464
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 463
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static getPreferenceSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 371
    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isInteractAcrossProfilesEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 372
    sget p1, Lcom/android/settings/R$string;->interact_across_profiles_summary_allowed:I

    goto :goto_0

    .line 373
    :cond_0
    sget p1, Lcom/android/settings/R$string;->interact_across_profiles_summary_not_allowed:I

    .line 371
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleInstallBannerClick()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallAppIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/16 v0, 0xa9

    .line 350
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    return-void

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInWork:Z

    const/16 v1, 0xa8

    if-nez v0, :cond_1

    .line 355
    invoke-direct {p0, v1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallAppIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mWorkProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 359
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInPersonal:Z

    if-nez v0, :cond_2

    .line 360
    invoke-direct {p0, v1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallAppIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mPersonalProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method private handleSwitchPreferenceClick()V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isInteractAcrossProfilesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xac

    .line 252
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->enableInteractAcrossProfiles(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->refreshUi()Z

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->showConsentDialog()V

    :goto_0
    return-void
.end method

.method private isCrossProfilePackageWhitelisted(Ljava/lang/String;)Z
    .locals 1

    .line 432
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 433
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getAllCrossProfilePackages()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isInteractAcrossProfilesEnabled()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isInteractAcrossProfilesEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isInteractAcrossProfilesEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 305
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 306
    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;->getWorkProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 310
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 311
    const-class v3, Landroid/content/pm/CrossProfileApps;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/CrossProfileApps;

    .line 312
    invoke-virtual {v3, p1}, Landroid/content/pm/CrossProfileApps;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    invoke-static {p0, p1, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isInteractAcrossProfilesEnabledInProfile(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-static {p0, p1, v1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isInteractAcrossProfilesEnabledInProfile(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isInteractAcrossProfilesEnabledInProfile(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 323
    :try_start_0
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 329
    invoke-static {p0, v2, v0, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 439
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p2, 0xc0000

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private launchedByApp()Z
    .locals 2

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "intent"

    .line 493
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-nez p0, :cond_1

    return v0

    .line 497
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.settings.MANAGE_CROSS_PROFILE_ACCESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private logEvent(I)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mWorkProfile:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 166
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 167
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mWorkProfile:Landroid/os/UserHandle;

    .line 168
    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :cond_0
    return-void
.end method

.method private logNonConfigurableAppMetrics()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isCrossProfilePackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa4

    .line 146
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    if-nez v0, :cond_1

    const/16 v0, 0xa7

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInPersonal:Z

    if-nez v0, :cond_2

    const/16 v0, 0xa6

    .line 153
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    return-void

    .line 156
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInWork:Z

    if-nez v0, :cond_3

    const/16 v0, 0xa5

    .line 157
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    :cond_3
    return-void
.end method

.method private logPageLaunchMetrics()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/CrossProfileApps;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logNonConfigurableAppMetrics()V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mIsPageLaunchedByApp:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa2

    .line 138
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa3

    .line 140
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logEvent(I)V

    :goto_0
    return-void
.end method

.method private maybeShowExtraSummary()V
    .locals 1

    const-string v0, "interact_across_profiles_extra_summary"

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mIsPageLaunchedByApp:Z

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshUiForConfigurableApps()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 451
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isInteractAcrossProfilesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->enableSwitchPref()V

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->disableSwitchPref()V

    :goto_0
    return-void
.end method

.method private refreshUiForNonConfigurableApps()Z
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v2, Lcom/android/settings/R$string;->interact_across_profiles_switch_disabled:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isCrossProfilePackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mWorkProfile:Landroid/os/UserHandle;

    invoke-static {v1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v2

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 403
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInPersonal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInWork:Z

    if-nez v0, :cond_1

    return v1

    .line 406
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInPersonal:Z

    if-nez v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    sget v3, Lcom/android/settings/R$string;->interact_across_profiles_install_personal_app_title:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mAppLabel:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallAppIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    sget v1, Lcom/android/settings/R$string;->interact_across_profiles_install_app_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 414
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return v2

    .line 417
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInWork:Z

    if-nez v0, :cond_5

    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    sget v3, Lcom/android/settings/R$string;->interact_across_profiles_install_work_app_title:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mAppLabel:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallAppIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    sget v1, Lcom/android/settings/R$string;->interact_across_profiles_install_app_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 425
    :cond_4
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return v2

    :cond_5
    return v1
.end method

.method private showConsentDialog()V
    .locals 7

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->interact_across_profiles_consent_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 264
    sget v1, Lcom/android/settings/R$id;->interact_across_profiles_consent_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    sget v2, Lcom/android/settings/R$string;->interact_across_profiles_consent_dialog_title:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mAppLabel:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 267
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    sget v1, Lcom/android/settings/R$id;->app_data_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    sget v2, Lcom/android/settings/R$string;->interact_across_profiles_consent_dialog_app_data_summary:I

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mAppLabel:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    sget v1, Lcom/android/settings/R$id;->permissions_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    sget v2, Lcom/android/settings/R$string;->interact_across_profiles_consent_dialog_permissions_summary:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mAppLabel:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->allow:I

    new-instance v2, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;-><init>(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;)V

    .line 279
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->deny:I

    new-instance v2, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$1;-><init>(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;)V

    .line 289
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private styleActionBar()V
    .locals 1

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x725

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    .line 91
    const-class v0, Landroid/content/pm/CrossProfileApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/CrossProfileApps;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 92
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mUserManager:Landroid/os/UserManager;

    .line 93
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;->getWorkProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mWorkProfile:Landroid/os/UserHandle;

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mPersonalProfile:Landroid/os/UserHandle;

    .line 97
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mWorkProfile:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInWork:Z

    .line 98
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mPersonalProfile:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstalledInPersonal:Z

    .line 100
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mAppLabel:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallAppIntent:Landroid/content/Intent;

    .line 103
    sget p1, Lcom/android/settings/R$xml;->interact_across_profiles_permissions_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "interact_across_profiles_settings_switch"

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 105
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "interact_across_profiles_header"

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "install_app_banner"

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CardPreference;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    .line 110
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->launchedByApp()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mIsPageLaunchedByApp:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->refreshUi()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(Z)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mPersonalProfile:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mWorkProfile:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->addAppTitleAndIcons(Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->styleActionBar()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->maybeShowExtraSummary()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->logPageLaunchMetrics()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->refreshUi()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(Z)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->handleSwitchPreferenceClick()V

    return v1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mInstallBanner:Lcom/android/settings/widget/CardPreference;

    if-ne p1, v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->handleInstallBannerClick()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected refreshUi()Z
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/CrossProfileApps;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    return v1

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/CrossProfileApps;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->refreshUiForNonConfigurableApps()Z

    move-result p0

    return p0

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->refreshUiForConfigurableApps()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method
