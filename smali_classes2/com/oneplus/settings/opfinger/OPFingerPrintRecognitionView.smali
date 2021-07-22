.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView08ForFod:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 2

    .line 225
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_finger_input_item_svg:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 227
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    return-object p0
.end method


# virtual methods
.method public doRecognitionByCount(IIZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p1, :cond_0

    .line 360
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 354
    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 346
    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 347
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 348
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08ForFod:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 343
    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 340
    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 337
    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 334
    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 331
    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 328
    :pswitch_8
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 325
    :pswitch_9
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 88
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_01:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 90
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_02:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 91
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_03:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 92
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_04:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 93
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_05:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 94
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_06:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 95
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_07:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 96
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_08_03:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    .line 97
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_08_04:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08ForFod:Lcom/oneplus/settings/opfinger/SvgView;

    .line 98
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_09:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    .line 99
    sget v0, Lcom/android/settings/R$raw;->opfinger_fod_anim_10:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    goto/16 :goto_0

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_01:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 104
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_02:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 105
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_03:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 106
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_04:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 107
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_05:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 108
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_06:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 109
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_07:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 110
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_16_08:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    goto/16 :goto_0

    .line 112
    :cond_1
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_01:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 113
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_02:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 114
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_03:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 115
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_04:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 116
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_05:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 117
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_06:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 118
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_07:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 119
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_17801_08:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    goto :goto_0

    .line 122
    :cond_2
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_01:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 123
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_02:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 124
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_03:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 125
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_04:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 126
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_05:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 127
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_06:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 128
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_07:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 129
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_08:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    .line 130
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_09:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    .line 131
    sget v0, Lcom/android/settings/R$raw;->opfinger_anim_10:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    .line 136
    :goto_0
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 145
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08ForFod:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 148
    :cond_3
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 152
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 65
    sget v1, Lcom/android/settings/R$layout;->op_finger_input_anim_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    .line 68
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 240
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08ForFod:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 243
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 246
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBackGround(I)V
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->opfinger_anim_color_fod_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->opfinger_anim_color_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object p0, v0

    .line 82
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    return-void
.end method

.method public startTouchDownAnim()V
    .locals 22

    move-object/from16 v0, p0

    .line 156
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 157
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f70a3d7    # 0.94f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f70a3d7    # 0.94f

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x12c

    .line 159
    invoke-virtual {v12, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 160
    invoke-virtual {v12, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v5, 0x0

    .line 161
    invoke-virtual {v12, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 162
    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3f882b93

    const/16 v18, 0x2

    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v20, 0x2

    const/high16 v21, 0x3f000000    # 0.5f

    move-object v13, v5

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v6, 0x96

    .line 166
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x21e

    .line 167
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 168
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 171
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 172
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f70a3d7    # 0.94f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f70a3d7    # 0.94f

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 174
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 175
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v8, 0x20

    .line 176
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 177
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 179
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f882b93

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f882b93

    const/16 v17, 0x2

    const/high16 v18, 0x3f000000    # 0.5f

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 181
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x1fe

    .line 182
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 183
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 189
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f70a3d7    # 0.94f

    const v12, 0x3f70a3d7    # 0.94f

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 191
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 192
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v8, 0x40

    .line 193
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 194
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 196
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f882b93

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f882b93

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 198
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x1de

    .line 199
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 200
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 207
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f70a3d7    # 0.94f

    const v12, 0x3f70a3d7    # 0.94f

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 209
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 210
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x60

    .line 211
    invoke-virtual {v5, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 212
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 214
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v10, 0x3f882b93

    const v12, 0x3f882b93

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 216
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v3, 0x1be

    .line 217
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 218
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView08ForFod:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
