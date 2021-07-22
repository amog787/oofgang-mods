.class public Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppOpenSupportedLinksPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# static fields
.field private static final KEY_LINK_OPEN_ALWAYS:Ljava/lang/String; = "app_link_open_always"

.field private static final KEY_LINK_OPEN_ASK:Ljava/lang/String; = "app_link_open_ask"

.field private static final KEY_LINK_OPEN_NEVER:Ljava/lang/String; = "app_link_open_never"

.field private static final TAG:Ljava/lang/String; = "OpenLinksPrefCtrl"


# instance fields
.field mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

.field mAskEveryTime:Lcom/android/settings/widget/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field mNotAllowed:Lcom/android/settings/widget/RadioButtonPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mRadioKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "app_link_open_always"

    const-string v0, "app_link_open_ask"

    const-string v1, "app_link_open_never"

    .line 53
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mRadioKeys:[Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private indexToLinkState(I)I
    .locals 0

    const/4 p0, 0x2

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    :cond_1
    return p0
.end method

.method private linkStateToIndex(I)I
    .locals 1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 113
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 116
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 117
    iget-object p0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private preferenceKeyToIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mRadioKeys:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 145
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private setRadioStatus(I)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mAskEveryTime:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mNotAllowed:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateAppLinkState(I)Z
    .locals 4

    .line 159
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    return v2

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3, p1, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const-string p0, "OpenLinksPrefCtrl"

    const-string p1, "Couldn\'t update intent verification status!"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 81
    sget p1, Lcom/android/settings/R$string;->app_link_open_always:I

    const-string v0, "app_link_open_always"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->getEntriesNo()I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->app_link_open_always_summary:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 86
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    sget p1, Lcom/android/settings/R$string;->app_link_open_ask:I

    const-string v0, "app_link_open_ask"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mAskEveryTime:Lcom/android/settings/widget/RadioButtonPreference;

    .line 89
    sget p1, Lcom/android/settings/R$string;->app_link_open_never:I

    const-string v0, "app_link_open_never"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mNotAllowed:Lcom/android/settings/widget/RadioButtonPreference;

    .line 91
    iget-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageName:Ljava/lang/String;

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result p1

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->linkStateToIndex(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mCurrentIndex:I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->setRadioStatus(I)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method getEntriesNo()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->preferenceKeyToIndex(Ljava/lang/String;)I

    move-result p1

    .line 105
    iget v0, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mCurrentIndex:I

    if-eq v0, p1, :cond_0

    .line 106
    iput p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mCurrentIndex:I

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->setRadioStatus(I)V

    .line 108
    iget p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->indexToLinkState(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->updateAppLinkState(I)Z

    :cond_0
    return-void
.end method

.method public setInit(Ljava/lang/String;)Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/AppOpenSupportedLinksPreferenceController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
