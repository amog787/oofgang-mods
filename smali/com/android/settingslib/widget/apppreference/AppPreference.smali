.class public Lcom/android/settingslib/widget/apppreference/AppPreference;
.super Landroidx/preference/Preference;
.source "AppPreference.java"


# instance fields
.field private mProgress:I

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    sget p1, Lcom/android/settingslib/widget/R$layout;->preference_app:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget p1, Lcom/android/settingslib/widget/R$layout;->preference_app:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 55
    iget-boolean v0, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgressVisible:Z

    if-eqz v0, :cond_0

    .line 56
    iget p0, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p0, 0x0

    .line 57
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 59
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgress:I

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgressVisible:Z

    .line 47
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
