.class public Lcom/android/settings/display/ColorModePreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_COLOR_MODE_AUTOMATIC:Ljava/lang/String; = "color_mode_automatic"

.field static final KEY_COLOR_MODE_BOOSTED:Ljava/lang/String; = "color_mode_boosted"

.field static final KEY_COLOR_MODE_NATURAL:Ljava/lang/String; = "color_mode_natural"

.field static final KEY_COLOR_MODE_SATURATED:Ljava/lang/String; = "color_mode_saturated"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 204
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$2;

    sget v1, Lcom/android/settings/R$xml;->color_mode_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/display/ColorModePreferenceFragment$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/ColorModePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 104
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->color_mode_preview:I

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/display/ColorModePreferenceFragment;->configureAndInstallPreview(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method configureAndInstallPreview(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    const/4 p0, 0x0

    .line 98
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 99
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 117
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 119
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    sget v6, Lcom/android/settings/R$string;->color_mode_option_natural:I

    .line 120
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_natural"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 119
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    .line 123
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    sget v6, Lcom/android/settings/R$string;->color_mode_option_boosted:I

    .line 124
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_boosted"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 123
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 127
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    sget v6, Lcom/android/settings/R$string;->color_mode_option_saturated:I

    .line 128
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_saturated"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 127
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    .line 131
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    sget v6, Lcom/android/settings/R$string;->color_mode_option_automatic:I

    .line 132
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_automatic"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 131
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getColorMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "color_mode_automatic"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "color_mode_saturated"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "color_mode_boosted"

    return-object p0

    :cond_2
    const-string p0, "color_mode_natural"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x477

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 93
    sget p0, Lcom/android/settings/R$xml;->color_mode_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ColorModePreferenceFragment$1;-><init>(Lcom/android/settings/display/ColorModePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    const-string v0, "accessibility_display_inversion_enabled"

    .line 75
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "accessibility_display_daltonizer_enabled"

    .line 78
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    .line 77
    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 5

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "color_mode_saturated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "color_mode_natural"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "color_mode_automatic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "color_mode_boosted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 166
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v2}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_2

    .line 163
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v3}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_2

    .line 160
    :cond_3
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v4}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_2

    .line 157
    :cond_4
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v1}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    :goto_2
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x78f30bbe -> :sswitch_3
        -0x2c14dd15 -> :sswitch_2
        -0x15c4c717 -> :sswitch_1
        0x2da6f855 -> :sswitch_0
    .end sparse-switch
.end method
