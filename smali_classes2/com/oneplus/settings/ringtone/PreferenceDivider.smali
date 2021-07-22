.class public Lcom/oneplus/settings/ringtone/PreferenceDivider;
.super Landroid/preference/Preference;
.source "PreferenceDivider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/PreferenceDivider;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/PreferenceDivider;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .line 28
    sget v0, Lcom/android/settings/R$layout;->op_preference_divider:I

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
