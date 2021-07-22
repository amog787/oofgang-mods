.class public Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;
.super Landroidx/preference/Preference;
.source "OPFaceUnlockModeLottieViewCategory.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHasInited:Z

.field private mLayoutResId:I

.field private mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    sget v0, Lcom/android/settings/R$layout;->op_single_lottie_instructions_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget p2, Lcom/android/settings/R$layout;->op_single_lottie_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget p2, Lcom/android/settings/R$layout;->op_single_lottie_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iget p1, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private setAnimationResource()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->getUnlockMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_swipe_up_dark.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_swipe_up_light.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_use_power_key_dark.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_use_power_key_light.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getUnlockMode()I
    .locals 2

    .line 79
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 72
    sget v0, Lcom/android/settings/R$id;->op_single_lottie_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->startAnim()V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    .line 110
    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->stopAnim()V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->setAnimationResource()V

    .line 115
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public startAnim()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->getUnlockMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->setViewType(I)V

    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
