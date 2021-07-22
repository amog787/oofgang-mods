.class public Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPReadingModeTurnOnSettings.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAskPreference:Lcom/android/settings/widget/RadioButtonPreference;

.field private mChromaticPreference:Lcom/android/settings/widget/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mMonoPreference:Lcom/android/settings/widget/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private updateDefaultSelectStatus(I)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mAskPreference:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mChromaticPreference:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 89
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mMonoPreference:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPReadingModeTurnOnSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 95
    sget p0, Lcom/android/settings/R$xml;->op_reading_mode_turn_on_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    const-string p1, "ask"

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mAskPreference:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "chromatic"

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mChromaticPreference:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "mono"

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mMonoPreference:Lcom/android/settings/widget/RadioButtonPreference;

    .line 47
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mAskPreference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mChromaticPreference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mMonoPreference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    .line 51
    sget p0, Lcom/android/settings/R$string;->oneplus_reading_mode_turn_on_tips:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 5

    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ask"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "chromatic"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "reading_mode_status_manual"

    const-string v3, "reading_mode_status"

    const/4 v4, -0x2

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force-on-color"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    const-string v0, "mono"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 76
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force-on"

    invoke-static {p1, v2, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    add-int/lit8 p1, v1, 0x1

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "read_def"

    const-string v2, "status"

    invoke-static {v0, v2, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "reading_mode_option_manual"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->updateDefaultSelectStatus(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_option_manual"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->updateDefaultSelectStatus(I)V

    return-void
.end method
