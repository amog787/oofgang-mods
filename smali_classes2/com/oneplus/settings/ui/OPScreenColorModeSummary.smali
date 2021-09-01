.class public Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPScreenColorModeSummary.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    .line 24
    sget p1, Lcom/android/settings/R$layout;->op_screen_color_mode_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 41
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 42
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "night_display_activated"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "reading_mode_status_manual"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    if-nez p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_screen_color_mode_title_summary:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v0, Lcom/android/settings/R$string;->oneplus_screen_color_mode_reading_mode_on_summary:I

    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setTextSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
