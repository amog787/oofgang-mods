.class public Lcom/android/settings/widget/TintDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "TintDrawable.java"


# instance fields
.field private mThemeAttrs:[I

.field private mTint:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private applyTint()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/TintDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/TintDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 88
    sget v0, Lcom/android/settings/R$styleable;->TintDrawable_android_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget v0, Lcom/android/settings/R$styleable;->TintDrawable_android_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    sget v0, Lcom/android/settings/R$styleable;->TintDrawable_android_tint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget v0, Lcom/android/settings/R$styleable;->TintDrawable_android_tint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/TintDrawable;->mTint:Landroid/content/res/ColorStateList;

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/TintDrawable;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lcom/android/settings/R$styleable;->TintDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TintDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/TintDrawable;->applyTint()V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/widget/TintDrawable;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->canApplyTheme()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/android/settings/R$styleable;->TintDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/DrawableWrapper;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/TintDrawable;->mThemeAttrs:[I

    .line 61
    invoke-direct {p0, v0}, Lcom/android/settings/widget/TintDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/widget/TintDrawable;->applyTint()V

    return-void
.end method
