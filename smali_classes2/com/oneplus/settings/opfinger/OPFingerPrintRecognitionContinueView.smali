.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 2

    .line 212
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_finger_input_item_svg:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 214
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    return-object p0
.end method


# virtual methods
.method public doRecognitionByCount(IIZ)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x2

    :cond_0
    const/16 v0, 0x64

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 407
    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 408
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto/16 :goto_0

    :pswitch_1
    if-lt p2, v0, :cond_2

    .line 394
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p1, :cond_1

    .line 395
    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 397
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 398
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 401
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 402
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_2
    if-lt p2, v0, :cond_5

    .line 377
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p1, :cond_3

    .line 378
    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 380
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p1, :cond_4

    .line 381
    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 383
    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 384
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 387
    :cond_5
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 388
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 371
    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 372
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 366
    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 367
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 361
    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_6

    .line 362
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 358
    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 355
    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 352
    :pswitch_8
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 349
    :pswitch_9
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_11:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 93
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_12:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 94
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_13:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 95
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_14:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 96
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_15:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 97
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_16:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 98
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_17:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 99
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_18:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    .line 100
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_19:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    .line 101
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_20:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    goto/16 :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_09:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 105
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_10:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 106
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_11:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 107
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_12:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 109
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17_13:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 110
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17_14:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 111
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17_15:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 112
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17_16:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    .line 113
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17_17:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    goto/16 :goto_0

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_09:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 117
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_10:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 118
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_11:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 119
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_12:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 120
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_13:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 121
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_14:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 122
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_15:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 123
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_16:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    goto :goto_0

    .line 125
    :cond_2
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_09:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 126
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_10:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 127
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_11:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 128
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_12:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    goto :goto_0

    .line 131
    :cond_3
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_11:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 132
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_12:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 133
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_13:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 134
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_14:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 135
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_15:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 136
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 137
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 138
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_18:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    .line 139
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_19:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    .line 140
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_20:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    .line 144
    :goto_0
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 149
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 155
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 156
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 161
    :cond_5
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 162
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 166
    :cond_6
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 167
    :cond_7
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    sget v1, Lcom/android/settings/R$layout;->op_finger_input_anim_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    .line 71
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 254
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 255
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 256
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 262
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    goto/16 :goto_0

    .line 263
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 265
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 266
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 267
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 268
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 273
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 280
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setBackGround(I)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->opfinger_anim_color_fod_bg_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->opfinger_anim_color_bg_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
