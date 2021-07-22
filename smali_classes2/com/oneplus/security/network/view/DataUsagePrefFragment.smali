.class public Lcom/oneplus/security/network/view/DataUsagePrefFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DataUsagePrefFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private hotspotPref:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCurrentSlotId:I

.field private mDataUsagePackageSet:Landroidx/preference/Preference;

.field private mDataUsagePreference:Lcom/oneplus/security/network/view/HeaderPreference;

.field private mDataUsageRank:Landroidx/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mNeedHeadView:Z

.field private mSupportSdk:Z

.field private mWarnValue:J

.field private mWlanMeteredSettings:Landroidx/preference/Preference;

.field private mXmlId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    .line 53
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mSupportSdk:Z

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWarnValue:J

    .line 71
    sget v0, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mXmlId:I

    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 85
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    .line 53
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mSupportSdk:Z

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWarnValue:J

    .line 71
    sget v0, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mXmlId:I

    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mContext:Landroid/content/Context;

    .line 87
    iput p2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mXmlId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    .line 53
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mSupportSdk:Z

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWarnValue:J

    .line 71
    sget v0, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mXmlId:I

    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mHandler:Landroid/os/Handler;

    .line 91
    iput-boolean p3, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    .line 92
    iput p4, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    .line 93
    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mContext:Landroid/content/Context;

    .line 94
    iput p2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mXmlId:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->hotspotPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)Lcom/oneplus/security/network/view/HeaderPreference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsagePreference:Lcom/oneplus/security/network/view/HeaderPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWarnValue:J

    return-wide v0
.end method

.method private synthetic lambda$onCreate$0(Landroidx/preference/Preference;)Z
    .locals 2

    .line 144
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.security.action.TrafficUsageSettings"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    const-string v1, "sim_card_slot"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$1(Landroidx/preference/Preference;)Z
    .locals 6

    const-string p1, "DataUsagePrefFragment"

    .line 154
    invoke-static {}, Lcom/oneplus/security/utils/Utils;->hasSDK24()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 155
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.DATAUSAGESUMMARY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    const-string v2, "show_ethernet"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    const-string v2, "show_slotId"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment_as_subsetting"

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "settings:from_app"

    const-string v2, "com.oneplus.security"

    .line 159
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 163
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.oneplus.action.DATAUSAGE_DATAUSAGELIS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/Utils;->isIntentReceiverExists(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "replace a new action"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MOBILE_DATA_USAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    if-eqz v2, :cond_2

    .line 173
    iget v2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    invoke-static {v2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result v2

    .line 174
    invoke-static {v2}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 177
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    :goto_0
    const-string v4, ":settings:show_fragment_title"

    .line 179
    iget-object v5, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsageRank:Landroidx/preference/Preference;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "sub_id"

    .line 180
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "network_template"

    .line 181
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method private synthetic lambda$onCreate$2(Landroidx/preference/Preference;)Z
    .locals 3

    .line 194
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.oneplus.action.DATAUSAGE_METEREDSETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, ":settings:show_fragment_as_subsetting"

    const/4 v1, 0x1

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "settings:from_app"

    const-string v2, "com.oneplus.security"

    .line 196
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v1
.end method


# virtual methods
.method public animateUpdateMonthlyRemainingData(JJ)V
    .locals 8

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->updateMonthlyRemainingData(JJ)V

    return-void

    .line 307
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;-><init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "DataUsagePrefFragment"

    const-string p1, "activity is null"

    .line 313
    invoke-static {p0, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentSlotId()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    return p0
.end method

.method protected initHeaderView()V
    .locals 2

    .line 279
    invoke-static {}, Lcom/oneplus/security/utils/Utils;->currentUserIsOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsagePackageSet:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "screen_brightness"

    .line 281
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsagePackageSet:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public initUIState()V
    .locals 2

    .line 255
    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    if-eqz v0, :cond_1

    .line 256
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsageRank:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsagePackageSet:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->initHeaderView()V

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_1
    return-void
.end method

.method public ismNeedHeadView()Z
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    return p0
.end method

.method public synthetic lambda$onCreate$0$DataUsagePrefFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->lambda$onCreate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCreate$1$DataUsagePrefFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->lambda$onCreate$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCreate$2$DataUsagePrefFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->lambda$onCreate$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DataUsagePrefFragment"

    const-string v1, "onCreate"

    .line 120
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "mSupportSdk"

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mSupportSdk:Z

    const-string v1, "mNeedHeadView"

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    const-string v1, "mCurrentSlotId"

    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 127
    iget p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mXmlId:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "op_data_usage_rank"

    .line 128
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsageRank:Landroidx/preference/Preference;

    const-string p1, "op_wlan_meteredsettings"

    .line 129
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWlanMeteredSettings:Landroidx/preference/Preference;

    const-string p1, "header_data_preference"

    .line 130
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/security/network/view/HeaderPreference;

    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsagePreference:Lcom/oneplus/security/network/view/HeaderPreference;

    const-string p1, "op_hotspot_usage"

    .line 134
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->hotspotPref:Landroidx/preference/Preference;

    .line 136
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->hotspotPref:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    const-string p1, "screen_brightness"

    .line 137
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->hotspotPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string p1, "op_data_usage_package_set"

    .line 141
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsagePackageSet:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    .line 143
    new-instance v1, Lcom/oneplus/security/network/view/-$$Lambda$DataUsagePrefFragment$65w9ySy8i4zfDZn6aVV1fXzO0Rw;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/view/-$$Lambda$DataUsagePrefFragment$65w9ySy8i4zfDZn6aVV1fXzO0Rw;-><init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mDataUsageRank:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    .line 153
    new-instance v1, Lcom/oneplus/security/network/view/-$$Lambda$DataUsagePrefFragment$9-EjjHeRcvod7CiqL5Xlya9BFiI;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/view/-$$Lambda$DataUsagePrefFragment$9-EjjHeRcvod7CiqL5Xlya9BFiI;-><init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWlanMeteredSettings:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 193
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWlanMeteredSettings:Landroidx/preference/Preference;

    new-instance v1, Lcom/oneplus/security/network/view/-$$Lambda$DataUsagePrefFragment$Fm7v3I5KjNq0VhnSHXuSNkaUvjU;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/view/-$$Lambda$DataUsagePrefFragment$Fm7v3I5KjNq0VhnSHXuSNkaUvjU;-><init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_5

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mContext:Landroid/content/Context;

    .line 204
    :cond_5
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_6

    const-string p0, "mContext is null ,Fragment onCreate return ."

    .line 205
    invoke-static {v0, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->initUIState()V

    .line 210
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->hotspotPref:Landroidx/preference/Preference;

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 211
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->hotspotPref:Landroidx/preference/Preference;

    new-instance v0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;-><init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 268
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnState(Landroid/content/Context;ZI)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    invoke-static {v0, v3, v1, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWarnValue:J

    goto :goto_0

    .line 273
    :cond_0
    iput-wide v1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mWarnValue:J

    :goto_0
    const-string p0, "DataUsagePrefFragment"

    const-string v0, "onResume"

    .line 275
    invoke-static {p0, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 101
    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mSupportSdk:Z

    const-string v1, "mSupportSdk"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    const-string v1, "mNeedHeadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    const-string v1, "mCurrentSlotId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "mSupportSdk"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mSupportSdk:Z

    const-string v0, "mNeedHeadView"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mNeedHeadView:Z

    const-string v0, "mCurrentSlotId"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mCurrentSlotId:I

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSupportSdk(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mSupportSdk:Z

    return-void
.end method

.method public updateMonthlyRemainingData(JJ)V
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;-><init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
