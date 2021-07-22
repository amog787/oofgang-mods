.class public Lcom/oneplus/settings/OPScreenRefreshRate;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenRefreshRate.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

.field private mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mEnterValue:I

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/oneplus/settings/OPScreenRefreshRate$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPScreenRefreshRate$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPScreenRefreshRate;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method private delayRefreshUI()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPScreenRefreshRate$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPScreenRefreshRate$1;-><init>(Lcom/oneplus/settings/OPScreenRefreshRate;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateFooterPreference(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    sget v0, Lcom/android/settings/R$string;->oneplus_screen_refresh_rate_info:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHighVsync()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "90"

    const-string v1, "120"

    .line 72
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 74
    :cond_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/android/settings/R$xml;->op_screen_refresh_rate_select:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 50
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    const-string p1, "op_auto_mode"

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "op_60hz_mode"

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "high_vsync_mode"

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    .line 54
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 57
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHighVsync()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string p1, "footer_preference"

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPScreenRefreshRate;->updateFooterPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_refresh_rate"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 92
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 93
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v5, :cond_1

    .line 95
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 100
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 101
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 102
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenRefreshRate;->delayRefreshUI()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v3, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 83
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne v0, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 84
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne v0, v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mEnterValue:I

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 126
    iget p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mEnterValue:I

    if-eq v0, p0, :cond_1

    const-string p0, "status"

    const-string v1, "refresh rate"

    if-ne v0, v2, :cond_0

    const-string v0, "0"

    .line 128
    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "1"

    .line 130
    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
