.class public Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;
.super Landroidx/preference/Preference;
.source "RamBoostLottieAnimPreference.java"


# instance fields
.field private resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 11
    sget p1, Lcom/android/settings/R$layout;->op_preference_ramboost_lottie:I

    iput p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resId:I

    .line 25
    invoke-direct {p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    sget p1, Lcom/android/settings/R$layout;->op_preference_ramboost_lottie:I

    iput p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resId:I

    .line 20
    invoke-direct {p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    sget p1, Lcom/android/settings/R$layout;->op_preference_ramboost_lottie:I

    iput p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resId:I

    .line 15
    invoke-direct {p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .line 29
    iget v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resId:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
