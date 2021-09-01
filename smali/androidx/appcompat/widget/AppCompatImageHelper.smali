.class public Landroidx/appcompat/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private mImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Landroidx/appcompat/widget/TintInfo;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 202
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    .line 205
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    .line 206
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintInfo;->clear()V

    .line 208
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroidx/core/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 210
    iput-boolean v2, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 211
    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 213
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroidx/core/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 215
    iput-boolean v2, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 216
    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 219
    :cond_2
    iget-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 220
    :cond_4
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    return v2
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .locals 4

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    .line 184
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method applySupportImageTint()V
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 149
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_2

    .line 157
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 158
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p0

    .line 157
    invoke-static {v0, v1, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_3

    .line 160
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 161
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p0

    .line 160
    invoke-static {v0, v1, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_3
    :goto_0
    return-void
.end method

.method getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 125
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 139
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method hasOverlappingRendering()Z
    .locals 2

    .line 105
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 10

    .line 51
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 54
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    move-object v6, p1

    move v8, p2

    .line 54
    invoke-virtual/range {v3 .. v9}, Landroid/widget/ImageView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 59
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_1

    .line 63
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 65
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 73
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_2
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 77
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    .line 78
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 77
    invoke-static {p1, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 80
    :cond_3
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 81
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget p1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    .line 83
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x0

    .line 82
    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    throw p0
.end method

.method public setImageResource(I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    return-void
.end method

.method setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 119
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 121
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    return-void
.end method

.method setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 132
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    return-void
.end method
