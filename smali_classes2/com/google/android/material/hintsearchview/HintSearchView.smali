.class public Lcom/google/android/material/hintsearchview/HintSearchView;
.super Landroid/widget/LinearLayout;
.source "HintSearchView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mHintText:Ljava/lang/String;

.field private mHintView:Landroid/widget/TextView;

.field private mIconSearch:Landroid/widget/ImageView;

.field private mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSearchIconTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    sget v0, Lcom/google/android/material/R$attr;->hintSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/hintsearchview/HintSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->op_persistent_search_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 37
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 38
    sget-object v0, Lcom/google/android/material/R$styleable;->HintSearchView:[I

    sget v1, Lcom/google/android/material/R$style;->Oneplus_Widget_Desgin_HintSearchView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 41
    sget p3, Lcom/google/android/material/R$styleable;->HintSearchView_android_icon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    sget p3, Lcom/google/android/material/R$styleable;->HintSearchView_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mHintText:Ljava/lang/String;

    .line 44
    sget p3, Lcom/google/android/material/R$styleable;->HintSearchView_iconTintColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_control_icon_color_active_light:I

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 44
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mSearchIconTintColor:I

    .line 46
    sget p3, Lcom/google/android/material/R$styleable;->HintSearchView_android_textColorHint:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_control_text_color_hint_light:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 46
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    sget p2, Lcom/google/android/material/R$id;->persistent_search_hint:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mHintView:Landroid/widget/TextView;

    .line 51
    sget p2, Lcom/google/android/material/R$id;->persistent_search_icon1:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mIconSearch:Landroid/widget/ImageView;

    .line 53
    iget-object p2, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object p1, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mHintText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/material/hintsearchview/HintSearchView;->setHintText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 56
    iget p2, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mSearchIconTintColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/hintsearchview/HintSearchView;->setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setHintText(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mHintView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/hintsearchview/HintSearchView;->setHintText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mHintView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSearchIcon(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mIconSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/hintsearchview/HintSearchView;->setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSearchIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/material/hintsearchview/HintSearchView;->mIconSearch:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
