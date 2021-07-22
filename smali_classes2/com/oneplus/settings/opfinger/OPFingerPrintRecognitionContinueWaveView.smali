.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueWaveView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 2

    .line 251
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_finger_input_item_svg:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 253
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    return-object p0
.end method


# virtual methods
.method public doRecognitionByCount(IIZ)V
    .locals 1

    .line 326
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 367
    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 364
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 360
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 356
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 351
    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 352
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 347
    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 348
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 343
    :pswitch_6
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 344
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 339
    :pswitch_7
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 340
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 336
    :pswitch_8
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 332
    :pswitch_9
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 333
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    :goto_0
    return-void

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
    .locals 0

    .line 107
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_11_01:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 108
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_11_05:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 109
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_12_04:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 110
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_13_03:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 111
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_13_04:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 112
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_14_02:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 113
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_14_03:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 114
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_15_02:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 115
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_15_07:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 116
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_16_03:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 117
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_16_06:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 118
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_17_05:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 119
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_17_06:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 120
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_18_05:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 121
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_18_06:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 122
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_19_05:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 123
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_19_07:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 124
    sget p1, Lcom/android/settings/R$raw;->opfinger_fod_anim_20_07:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 126
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 79
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    sget v1, Lcom/android/settings/R$layout;->op_finger_input_anim_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    .line 84
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 283
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 290
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 291
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 292
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 296
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    return-void
.end method

.method public setBackGround(I)V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->opfinger_anim_color_fod_bg_2:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->opfinger_anim_color_bg_2:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 98
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void
.end method

.method public startTouchDownAnim()V
    .locals 22

    move-object/from16 v0, p0

    .line 147
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 148
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

    .line 149
    invoke-virtual {v12, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 150
    invoke-virtual {v12, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v5, 0x0

    .line 151
    invoke-virtual {v12, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 152
    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 154
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

    .line 155
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x21e

    .line 156
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 157
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 160
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 161
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

    .line 162
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 163
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v8, 0x20

    .line 164
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 165
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f882b93

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f882b93

    const/16 v17, 0x2

    const/high16 v18, 0x3f000000    # 0.5f

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 168
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x1fe

    .line 169
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 170
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 171
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 175
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f70a3d7    # 0.94f

    const v12, 0x3f70a3d7    # 0.94f

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 176
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 177
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v8, 0x40

    .line 178
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 179
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 181
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f882b93

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f882b93

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 182
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x1de

    .line 183
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 184
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 190
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

    const-wide/16 v8, 0x60

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

    .line 197
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x1be

    .line 198
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 199
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 204
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f70a3d7    # 0.94f

    const v12, 0x3f70a3d7    # 0.94f

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 205
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 206
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v8, 0x80

    .line 207
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 208
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 209
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f882b93

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f882b93

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 210
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x19e

    .line 212
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 213
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 219
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 220
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f70a3d7    # 0.94f

    const v12, 0x3f70a3d7    # 0.94f

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 221
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 222
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v8, 0xa0

    .line 223
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 224
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 226
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f882b93

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f882b93

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 227
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x17e

    .line 228
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 229
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 235
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f70a3d7    # 0.94f

    const v12, 0x3f70a3d7    # 0.94f

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 236
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 237
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0xc0

    .line 238
    invoke-virtual {v5, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 239
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 241
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v10, 0x3f882b93

    const v12, 0x3f882b93

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 242
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v3, 0x15e

    .line 243
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 245
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
