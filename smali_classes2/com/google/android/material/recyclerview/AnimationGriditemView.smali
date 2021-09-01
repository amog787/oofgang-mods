.class public Lcom/google/android/material/recyclerview/AnimationGriditemView;
.super Landroid/widget/FrameLayout;
.source "AnimationGriditemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;,
        Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_RES:I

.field private static final RADIUS_RES:I

.field private static final sRadiusModeTypeArray:[Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mImage:Landroid/widget/ImageView;

.field private mMantleView:Landroid/view/View;

.field private mRadius:I

.field private mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    sget v0, Lcom/oneplus/commonctrl/R$dimen;->op_control_radius_r12:I

    sput v0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->RADIUS_RES:I

    .line 25
    sget v0, Lcom/oneplus/commonctrl/R$integer;->op_control_time_225:I

    sput v0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->ANIMATION_DURATION_RES:I

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 45
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    new-array v0, v4, [Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 55
    sget-object v1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->sRadiusModeTypeArray:[Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    sget-object p1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 34
    sget-object p1, Landroidx/animation/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object p1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 34
    sget-object p1, Landroidx/animation/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 67
    invoke-direct {p0, p2}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object p1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 34
    sget-object p1, Landroidx/animation/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 72
    invoke-direct {p0, p2}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    sget-object p1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 34
    sget-object p1, Landroidx/animation/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 77
    invoke-direct {p0, p2}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->op_animation_grid_list_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    sget v0, Lcom/google/android/material/R$id;->grid_item_img:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/google/android/material/R$id;->mantle:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mMantleView:Landroid/view/View;

    .line 85
    sget v0, Lcom/google/android/material/R$id;->grid_item_checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/recyclerview/AnimationGriditemView;->RADIUS_RES:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadius:I

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/recyclerview/AnimationGriditemView;->ANIMATION_DURATION_RES:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/R$styleable;->AnimationGridItemView:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    sget v0, Lcom/google/android/material/R$styleable;->AnimationGridItemView_android_src:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->AnimationGridItemView_android_scaleType:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/material/recyclerview/AnimationGriditemView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    :cond_1
    sget v0, Lcom/google/android/material/R$styleable;->AnimationGridItemView_radiusMode:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 105
    sget-object v1, Lcom/google/android/material/recyclerview/AnimationGriditemView;->sRadiusModeTypeArray:[Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->setRadiusMode(Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;)V

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private scheduleCheckedAnimation()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mChecked:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mMantleView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mMantleView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private scheduleRadiusChange()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    sget-object v1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    if-ne v0, v1, :cond_0

    .line 161
    new-instance v0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;

    iget v1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadius:I

    invoke-direct {v0, v1}, Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 163
    iget-object v1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;

    iget v3, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadius:I

    invoke-direct {v2, v3}, Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 164
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getmImageView()Landroid/widget/ImageView;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 134
    iput-boolean p1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mChecked:Z

    .line 135
    iget-object v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->scheduleCheckedAnimation()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setRadiusMode(Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mRadiusMode:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/recyclerview/AnimationGriditemView;->scheduleRadiusChange()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
