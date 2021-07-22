.class public Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintFodBgAnimView.java"


# instance fields
.field private mFodBgView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPath_1:Landroid/widget/ImageView;

.field private mPath_10:Landroid/widget/ImageView;

.field private mPath_11:Landroid/widget/ImageView;

.field private mPath_2:Landroid/widget/ImageView;

.field private mPath_3:Landroid/widget/ImageView;

.field private mPath_4:Landroid/widget/ImageView;

.field private mPath_5:Landroid/widget/ImageView;

.field private mPath_6:Landroid/widget/ImageView;

.field private mPath_7:Landroid/widget/ImageView;

.field private mPath_8:Landroid/widget/ImageView;

.field private mPath_9:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initBgAnimView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setCenterVisible(Z)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 71
    sget v1, Lcom/android/settings/R$layout;->op_finger_enroll_fod_bg_anim_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    .line 73
    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_01:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_02:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_03:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_04:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_05:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_06:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_07:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_08:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_09:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_10:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_11:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initBgAnimView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setCenterVisible(Z)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setEdgeVisible(Z)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startTouchDownAnim()V
    .locals 22

    move-object/from16 v0, p0

    .line 134
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 135
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

    .line 136
    invoke-virtual {v12, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v3, 0x12c

    .line 137
    invoke-virtual {v12, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v5, 0x0

    .line 138
    invoke-virtual {v12, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 139
    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 141
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

    const/4 v6, 0x0

    .line 142
    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v7, 0x96

    .line 143
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x21e

    .line 144
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 145
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 146
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 151
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x2

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 152
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 153
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x20

    .line 154
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 155
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 158
    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 159
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1fe

    .line 160
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 161
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 167
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 168
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 169
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x40

    .line 170
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 171
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 173
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 174
    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 175
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1de

    .line 176
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 177
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 183
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 184
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 185
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x60

    .line 186
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 187
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 190
    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 191
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1be

    .line 192
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 193
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 199
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 200
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 201
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x80

    .line 202
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 203
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 205
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 206
    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 207
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x19e

    .line 208
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 209
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 214
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 215
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 216
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0xa0

    .line 217
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 218
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 220
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 221
    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 222
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x17e

    .line 223
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 224
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 228
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 229
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 230
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 231
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v2, 0xc0

    .line 232
    invoke-virtual {v5, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 233
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 235
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v11, 0x3f882b93

    const v13, 0x3f882b93

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 236
    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 237
    invoke-virtual {v2, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v3, 0x15e

    .line 238
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 239
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
