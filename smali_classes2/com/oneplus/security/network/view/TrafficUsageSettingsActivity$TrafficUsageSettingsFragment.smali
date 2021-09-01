.class public Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "TrafficUsageSettingsActivity.java"

# interfaces
.implements Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;
.implements Lcom/oneplus/security/network/operator/OperatorAccountDayUpdater;
.implements Lcom/oneplus/security/network/simcard/SimStateListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficUsageSettingsFragment"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrentSlotId:I

.field private mCurrentSubId:I

.field private mDialogShowing:Z

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

.field mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

.field private mUsedByte:J

.field private traffic_monthly_usage:Landroidx/preference/Preference;

.field private traffic_reset_day:Landroidx/preference/Preference;

.field private traffic_total_settings:Landroidx/preference/Preference;

.field private traffic_total_switch:Landroidx/preference/SwitchPreference;

.field private traffic_warn_settings:Landroidx/preference/Preference;

.field private traffic_warn_switch:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    .line 149
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_reset_day:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_switch:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_settings:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_monthly_usage:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_switch:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_settings:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Lcom/oneplus/security/network/operator/OperatorModelInterface;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/net/NetworkTemplate;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method static synthetic access$902(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    return p1
.end method

.method private finishActivity()V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    .line 740
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    .line 741
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPreference()V
    .locals 6

    .line 168
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    const-string v0, "key_traffic_reset_day"

    .line 170
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_reset_day:Landroidx/preference/Preference;

    const-string v0, "key_traffic_monthly_usage"

    .line 171
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_monthly_usage:Landroidx/preference/Preference;

    const-string v0, "key_traffic_total_switch"

    .line 173
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_switch:Landroidx/preference/SwitchPreference;

    const-string v0, "key_traffic_total_settings"

    .line 174
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_settings:Landroidx/preference/Preference;

    .line 175
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_switch:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {v1, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v0, "key_traffic_warn_switch"

    .line 176
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_switch:Landroidx/preference/SwitchPreference;

    const-string v0, "key_traffic_warn_settings"

    .line 177
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_settings:Landroidx/preference/Preference;

    .line 178
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_switch:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnState(Landroid/content/Context;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_reset_day:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_monthly_usage:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_settings:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_settings:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_switch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_switch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getAccountDay(I)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->traffic_reset_day_summary:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->traffic_day_dimension:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_reset_day:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 723
    :cond_0
    iget-wide v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mUsedByte:J

    goto :goto_0

    .line 720
    :cond_1
    iget-object p3, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    const-wide/16 v2, -0x1

    invoke-static {p3, v1, v2, v3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide v1

    goto :goto_0

    .line 717
    :cond_2
    iget-object p3, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {p3, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getPkgTotalInByte(I)J

    move-result-wide v1

    :goto_0
    long-to-float p3, v1

    const/high16 v1, 0x4ec00000

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x4e800000

    div-float/2addr p3, v1

    .line 730
    invoke-direct {p0, p3}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->formatText(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 731
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_3
    const/high16 v0, 0x49800000    # 1048576.0f

    div-float/2addr p3, v0

    .line 733
    invoke-direct {p0, p3}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->formatText(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 734
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 736
    :goto_1
    invoke-static {p1}, Lcom/oneplus/security/utils/Utils;->setEditTextAtLastLocation(Landroid/widget/EditText;)V

    return-void
.end method

.method private showBytesEditorDialog(Landroid/net/NetworkTemplate;I)V
    .locals 12

    .line 569
    iget-boolean p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 572
    iput-boolean p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    .line 573
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 575
    sget v2, Lcom/android/settings/R$layout;->dialog_data_usage_editor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 578
    sget v2, Lcom/android/settings/R$id;->size_spinner:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/CharSequence;

    .line 580
    invoke-static {}, Lcom/oneplus/security/utils/Utils;->hasSDK27()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 581
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$string;->megabyteShort:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 582
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$string;->gigabyteShort:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p1

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "megabyteShort"

    const-string v9, "string"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 585
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v11, "gigabyteShort"

    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p1

    .line 589
    :goto_0
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    const v9, 0x1090008

    invoke-direct {v7, v8, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v6, 0x1090009

    .line 592
    invoke-virtual {v7, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 594
    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 595
    sget v6, Lcom/android/settings/R$id;->bytes:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-direct {p0, v6, v2, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;I)V

    if-eqz p2, :cond_5

    if-eq p2, p1, :cond_3

    if-eq p2, v5, :cond_2

    .line 627
    sget p1, Lcom/android/settings/R$string;->traffic_used_title:I

    goto :goto_1

    .line 624
    :cond_2
    sget p1, Lcom/android/settings/R$string;->traffic_used_title:I

    goto :goto_1

    .line 615
    :cond_3
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 616
    sget p1, Lcom/android/settings/R$string;->traffic_set_warn_title_vzw:I

    .line 617
    sget v4, Lcom/android/settings/R$string;->traffic_set_warn_description_vzw:I

    goto :goto_1

    .line 619
    :cond_4
    sget p1, Lcom/android/settings/R$string;->traffic_set_warn_title:I

    goto :goto_1

    .line 605
    :cond_5
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 606
    sget p1, Lcom/android/settings/R$string;->traffic_set_limit_title_vzw:I

    .line 607
    sget v4, Lcom/android/settings/R$string;->traffic_set_limit_description_vzw:I

    goto :goto_1

    .line 609
    :cond_6
    sget p1, Lcom/android/settings/R$string;->traffic_set_limit_title:I

    .line 630
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 632
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v4, :cond_7

    .line 633
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 636
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 637
    new-instance v2, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$9;

    invoke-direct {v2, p0, v1, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$9;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 703
    invoke-virtual {v0, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 704
    new-instance p1, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$10;

    invoke-direct {p1, p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$10;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 710
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showConfirmSetDataLimitDialog(J)V
    .locals 3

    .line 519
    iget-boolean v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    .line 523
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 525
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    sget v1, Lcom/android/settings/R$string;->traffic_usage_limit_dialog_title_vzw:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 527
    sget v1, Lcom/android/settings/R$string;->traffic_usage_limit_dialog_message_vzw:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 529
    :cond_1
    sget v1, Lcom/android/settings/R$string;->traffic_usage_limit_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 530
    sget v1, Lcom/android/settings/R$string;->traffic_usage_limit_dialog_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x104000a

    .line 533
    new-instance v2, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;J)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    .line 555
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 556
    new-instance p1, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$8;

    invoke-direct {p1, p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$8;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showResetDayDialog()V
    .locals 7

    .line 471
    iget-boolean v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mDialogShowing:Z

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getAccountDay(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficUsageSettingsFragment"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 482
    :goto_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 484
    sget v4, Lcom/android/settings/R$layout;->dialog_account_day_setting:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 485
    sget v4, Lcom/android/settings/R$id;->np_account_day:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/picker/NumberPicker;

    .line 486
    invoke-virtual {v4, v0}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    const/16 v0, 0x1f

    .line 487
    invoke-virtual {v4, v0}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    .line 488
    invoke-virtual {v4, v1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    .line 489
    invoke-virtual {v4, v6}, Lcom/google/android/material/picker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 490
    sget v0, Lcom/android/settings/R$string;->traffic_reset_day_title:I

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 491
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 492
    new-instance v1, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$5;

    invoke-direct {v1, p0, v4}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$5;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;Lcom/google/android/material/picker/NumberPicker;)V

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 503
    invoke-virtual {v2, v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 504
    new-instance v0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$6;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 510
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 511
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method private updateDataFromQ()V
    .locals 11

    .line 745
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update_data_usage_from_Q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getOneplusDataUsage(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "oneplus_datausage_error_code"

    .line 749
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 751
    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "oneplus_datausage_limit_state"

    .line 752
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "oneplus_datausage_total"

    .line 753
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "oneplus_datausage_warn_state"

    .line 754
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "oneplus_datausage_warn_value"

    .line 755
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 756
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_switch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {v0, v1, v7}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataTotalState(Landroid/content/Context;ZI)V

    .line 758
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_switch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v7, v2, v0

    if-eqz v7, :cond_1

    const-wide/16 v7, 0x400

    mul-long/2addr v2, v7

    const-wide/16 v9, 0x3e8

    .line 761
    div-long/2addr v2, v9

    .line 762
    iget-object v9, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {v9, v2, v3, v10}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataLimitValue(Landroid/content/Context;JI)V

    .line 763
    iget-object v9, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v9

    iget v10, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    div-long/2addr v2, v7

    invoke-interface {v9, v10, v2, v3}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->setPackageTotalUsage(IJ)V

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_switch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eq v2, v4, :cond_2

    .line 766
    iget-object v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {v2, v4, v3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataWarnState(Landroid/content/Context;ZI)V

    .line 767
    iget-object v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_switch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    cmp-long v0, v5, v0

    if-eqz v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {v0, v5, v6, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataWarnValue(Landroid/content/Context;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 775
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public checkDataTotalValue(J)J
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 437
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$integer;->datausage_defaul_limit_value:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 438
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isSupportUstMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 439
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$integer;->datausage_ust_limit_value:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :cond_0
    int-to-long p0, p1

    const-wide/32 v2, 0x40000000

    mul-long/2addr p0, v2

    .line 442
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public checkDataWarnValue(J)J
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 455
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, p0}, Lcom/oneplus/security/network/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 458
    iget-wide p0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float p0, p0

    const p1, 0x3f99999a    # 1.2f

    mul-float/2addr p0, p1

    float-to-long v0, p0

    :cond_0
    const-wide p0, 0x80000000L

    .line 460
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public onAccountDayUpdate(II)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    if-eq p1, v0, :cond_1

    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAccountDayUpdate currentSlotId is not eq with simIndex, simIndex:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentSlotId:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrafficUsageSettingsFragment"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 355
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshAccountDayPre(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 229
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 230
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    .line 231
    invoke-interface {p1, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "sim_card_slot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    goto :goto_0

    :cond_0
    const-string p1, "TrafficUsageSettingsFragment"

    const-string v0, "error retrieve current using slot id."

    .line 202
    invoke-static {p1, v0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    iget p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSubId:I

    .line 205
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    .line 207
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 208
    new-instance v0, Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-direct {v0, p1}, Lcom/oneplus/security/network/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    .line 209
    iget p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSubId:I

    invoke-static {p1}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 211
    sget p1, Lcom/android/settings/R$xml;->pref_traffic_usage:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 212
    invoke-direct {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->initPreference()V

    .line 213
    invoke-direct {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->updateDataFromQ()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 251
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 223
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 224
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 243
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeOperatorAccountDayUpdater(Lcom/oneplus/security/network/operator/OperatorAccountDayUpdater;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_switch:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 285
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 286
    iget-object p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {p2, v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getPkgTotalInByte(I)J

    move-result-wide v5

    if-eqz p1, :cond_0

    .line 288
    invoke-direct {p0, v5, v6}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->showConfirmSetDataLimitDialog(J)V

    return v4

    :cond_0
    const-string p2, "data_limit"

    .line 291
    invoke-static {p2, v4}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    .line 292
    iget-object p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {p2, p1, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataTotalState(Landroid/content/Context;ZI)V

    .line 293
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    iget-object p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, p2, v2, v3}, Lcom/oneplus/security/network/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-string p1, "setPolicyLimitBytes "

    const-string p2, "setPolicyLimitBytes:2 "

    .line 294
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0, v5, v6}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataTotalPre(J)V

    return v1

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_switch:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "data_alert"

    .line 300
    invoke-static {p2, p1}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    .line 301
    iget-object p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {p2, p1, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataWarnState(Landroid/content/Context;ZI)V

    if-eqz p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {p1, p2, v2, v3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide p1

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->checkDataWarnValue(J)J

    move-result-wide p1

    .line 306
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {v0, v2, p1, p2}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->setWarnByteValue(IJ)V

    .line 308
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {p1, p2}, Lcom/oneplus/security/SecureService;->startServiceForDataUsage(Landroid/content/Context;I)V

    .line 314
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {p1, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->resetTrafficDialogAlertedState(Landroid/content/Context;I)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, p0, v2, v3}, Lcom/oneplus/security/network/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_0
    return v1

    :cond_3
    return v4
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_reset_day:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->showResetDayDialog()V

    return v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_total_settings:Landroidx/preference/Preference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 273
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->showBytesEditorDialog(Landroid/net/NetworkTemplate;I)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_warn_settings:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 275
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->showBytesEditorDialog(Landroid/net/NetworkTemplate;I)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->traffic_monthly_usage:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 277
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->showBytesEditorDialog(Landroid/net/NetworkTemplate;I)V

    :cond_3
    :goto_0
    return v2
.end method

.method public onResume()V
    .locals 2

    .line 256
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 257
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->registerOperatorAccountDayUpdater(Lcom/oneplus/security/network/operator/OperatorAccountDayUpdater;)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requesetPkgMonthlyUsageAndTotalInByte(I)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requestOperatorAccountDay(I)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getPkgTotalInByte(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataTotalPre(J)V

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataWarnPre()V

    .line 264
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-virtual {p0}, Lcom/oneplus/security/network/NetworkPolicyEditor;->read()V

    return-void
.end method

.method public onSimOperatorCodeChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSimStateChanged(Ljava/lang/String;)V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->finishActivity()V

    return-void
.end method

.method public onTrafficTotalAndUsedUpdate(JJI)V
    .locals 1

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    if-eq p5, v0, :cond_1

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTrafficTotalAndUsedUpdate currentSlotId is not eq with simIndex, simIndex:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentSlotId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrafficUsageSettingsFragment"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 342
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataTotalPre(J)V

    .line 343
    invoke-virtual {p0, p3, p4}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataUsedPre(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshAccountDayPre(I)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshDataTotalPre(J)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshDataUsedPre(J)V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "TrafficUsageSettingsFragment"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDataUsedPre: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iput-wide p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mUsedByte:J

    .line 395
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$3;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 389
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mActivity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isAdded: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshDataWarnPre()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mCurrentSlotId:I

    invoke-static {v0, v1, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnState(Landroid/content/Context;ZI)Z

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
