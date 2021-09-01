.class public Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;
.super Landroidx/preference/Preference;
.source "QuickPayLottieAnimPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;
    }
.end annotation


# instance fields
.field private animFile:Ljava/lang/String;

.field private anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

.field private img_quickpay_play:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    sget v0, Lcom/android/settings/R$layout;->op_quickpay_instructions_lottie:I

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    const-string v0, "op_quickpay_instroduction_anim_enchilada_white.json"

    .line 34
    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget p2, Lcom/android/settings/R$layout;->op_quickpay_instructions_lottie:I

    iput p2, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    const-string p2, "op_quickpay_instroduction_anim_enchilada_white.json"

    .line 34
    iput-object p2, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    .line 36
    new-instance p2, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    iput-object p2, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget p2, Lcom/android/settings/R$layout;->op_quickpay_instructions_lottie:I

    iput p2, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    const-string p2, "op_quickpay_instroduction_anim_enchilada_white.json"

    .line 34
    iput-object p2, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    .line 36
    new-instance p2, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    iput-object p2, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->startOrStopAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    .line 69
    iget p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private setAnimFile(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    return-void
.end method

.method private startAnim()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    return-void
.end method

.method private startOrStopAnim()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->stopAnim()V

    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->startAnim()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 75
    sget v0, Lcom/android/settings/R$id;->img_quickpay_play:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/android/settings/R$id;->anim_quickpay_instructions:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 79
    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    .line 81
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "op_quickpay_instroduction_anim_custom_black.json"

    .line 83
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "op_quickpay_instroduction_anim_custom_white.json"

    .line 85
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "OP_FEATURE_SETTINGS_QUICKPAY_ANIM_FOR_ENCHILADA"

    .line 87
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "op_quickpay_instroduction_anim_enchilada_black.json"

    .line 89
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "op_quickpay_instroduction_anim_enchilada_white.json"

    .line 91
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const-string p1, "op_quickpay_instroduction_anim_dumpling_black.json"

    .line 95
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "op_quickpay_instroduction_anim_dumpling_white.json"

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const-string p1, "op_quickpay_instroduction_anim_cheeseburger_black.json"

    .line 101
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "op_quickpay_instroduction_anim_cheeseburger_white.json"

    .line 103
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    new-instance v1, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

    if-eqz p0, :cond_0

    .line 162
    invoke-interface {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;->onPreferenceViewClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public playOrStopAnim()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
