.class public Lcom/android/settings/accessibility/PaletteListView;
.super Landroid/widget/ListView;
.source "PaletteListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;,
        Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;,
        Lcom/android/settings/accessibility/PaletteListView$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultGradientColor:I

.field private final mDefaultGradientColorCodeString:Ljava/lang/String;

.field private final mDisplayAdapter:Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTextBound:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/PaletteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/PaletteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListView;->mContext:Landroid/content/Context;

    .line 77
    new-instance p2, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;-><init>(Lcom/android/settings/accessibility/PaletteListView;Lcom/android/settings/accessibility/PaletteListView$1;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/PaletteListView;->mDisplayAdapter:Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 80
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->palette_list_gradient_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListView;->mDefaultGradientColorCodeString:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->palette_list_gradient_background:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/PaletteListView;->mDefaultGradientColor:I

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/android/settings/accessibility/PaletteListView;->mTextBound:F

    .line 84
    invoke-direct {p0}, Lcom/android/settings/accessibility/PaletteListView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/PaletteListView;)Landroid/view/LayoutInflater;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/PaletteListView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/accessibility/PaletteListView;->mDefaultGradientColor:I

    return p0
.end method

.method private computeTextWidthBounds(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 177
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 178
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/PaletteListView;->measureBound([Ljava/lang/String;)V

    return-void
.end method

.method private computeTextWidthBounds([Ljava/lang/String;)V
    .locals 4

    .line 187
    array-length v0, p1

    .line 188
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 190
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/PaletteListView;->measureBound([Ljava/lang/String;)V

    return-void
.end method

.method private fillColorCodeArray([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 3

    if-eq p2, p3, :cond_3

    if-ge p2, p3, :cond_0

    goto :goto_2

    .line 165
    :cond_0
    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    if-ge v1, p3, :cond_1

    .line 168
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    goto :goto_1

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/PaletteListView;->mDefaultGradientColorCodeString:Ljava/lang/String;

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private static getScreenWidth(Landroid/view/WindowManager;)I
    .locals 1

    .line 88
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private init()V
    .locals 13

    .line 95
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->setting_palette_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->setting_palette_data:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/PaletteListView;->computeTextWidthBounds(Landroid/content/res/TypedArray;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    .line 104
    new-instance v12, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;

    .line 106
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v6, p0, Lcom/android/settings/accessibility/PaletteListView;->mDefaultGradientColor:I

    .line 107
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iget v10, p0, Lcom/android/settings/accessibility/PaletteListView;->mTextBound:F

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x0

    invoke-direct {v11, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;-><init>(Lcom/android/settings/accessibility/PaletteListView;Ljava/lang/String;IFLandroid/graphics/drawable/GradientDrawable;)V

    .line 104
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListView;->mDisplayAdapter:Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->setColorList(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListView;->mDisplayAdapter:Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method private measureBound([Ljava/lang/String;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 199
    iget-object v1, p0, Lcom/android/settings/accessibility/PaletteListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/settings/R$layout;->palette_listview_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 200
    sget v2, Lcom/android/settings/R$id;->item_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    sget-object p1, Lcom/android/settings/accessibility/-$$Lambda$GVSGuO0C5SbPLkB7-734vFiO79E;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$GVSGuO0C5SbPLkB7-734vFiO79E;

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 210
    invoke-static {v0}, Lcom/android/settings/accessibility/PaletteListView;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    .line 209
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 214
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->accessibility_layout_margin_start_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 217
    invoke-static {v0}, Lcom/android/settings/accessibility/PaletteListView;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    add-float/2addr p1, v0

    .line 219
    iput p1, p0, Lcom/android/settings/accessibility/PaletteListView;->mTextBound:F

    return-void
.end method


# virtual methods
.method setPaletteListColors([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    array-length v1, p1

    .line 137
    array-length v2, p2

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-direct {p0, p2, v1, v2}, Lcom/android/settings/accessibility/PaletteListView;->fillColorCodeArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PaletteListView;->computeTextWidthBounds([Ljava/lang/String;)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 144
    new-instance v2, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;

    aget-object v6, p1, v0

    aget-object v4, p2, v0

    .line 147
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lcom/android/settings/accessibility/PaletteListView;->mTextBound:F

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x0

    invoke-direct {v9, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;-><init>(Lcom/android/settings/accessibility/PaletteListView;Ljava/lang/String;IFLandroid/graphics/drawable/GradientDrawable;)V

    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/PaletteListView;->mDisplayAdapter:Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;

    invoke-virtual {p1, v3}, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->setColorList(Ljava/util/List;)V

    .line 154
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView;->mDisplayAdapter:Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v0
.end method
