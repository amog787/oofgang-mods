.class public Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "OPLottieAnimationView.java"


# instance fields
.field private mCurrenProgress:I

.field private mFillCompleted:Z

.field private mSplitSteps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCurrenProgress()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mCurrenProgress:I

    return p0
.end method

.method public getSplitSteps()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mSplitSteps:I

    return p0
.end method

.method public isFillCompleted()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mFillCompleted:Z

    return p0
.end method

.method public setCurrenProgress(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mCurrenProgress:I

    return-void
.end method

.method public setFillCompleted(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mFillCompleted:Z

    return-void
.end method

.method public setSplitSteps(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mSplitSteps:I

    return-void
.end method
