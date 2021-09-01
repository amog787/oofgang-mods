.class public Lcom/android/settings/widget/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settings/widget/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$layout;->usage_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Lcom/android/settingslib/R$id;->usage_graph:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/UsageGraph;

    iput-object v0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    .line 45
    sget v1, Lcom/android/settingslib/R$id;->label_bottom:I

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/android/settingslib/R$id;->label_middle:I

    .line 47
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget v1, Lcom/android/settingslib/R$id;->label_top:I

    .line 48
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    new-array v0, v4, [Landroid/widget/TextView;

    .line 50
    sget v1, Lcom/android/settingslib/R$id;->label_start:I

    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    sget v1, Lcom/android/settingslib/R$id;->label_end:I

    .line 52
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    .line 54
    sget-object v0, Lcom/android/settingslib/R$styleable;->UsageView:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 59
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 62
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 63
    iget-object v0, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 64
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 67
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_3
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 71
    sget p2, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const v0, 0x800005

    if-ne p2, v0, :cond_4

    .line 73
    sget p2, Lcom/android/settingslib/R$id;->graph_label_group:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 74
    sget v1, Lcom/android/settingslib/R$id;->label_group:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81
    sget p2, Lcom/android/settingslib/R$id;->bottom_label_group:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 82
    sget v0, Lcom/android/settingslib/R$id;->bottom_label_space:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const v0, 0x800003

    if-ne p2, v0, :cond_5

    goto :goto_2

    .line 86
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported gravity "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    sget v0, Lcom/android/settingslib/R$styleable;->UsageView_android_colorAccent:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/UsageGraph;->setAccentColor(I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance p2, Ljava/util/Locale;

    const-string v0, "fa"

    invoke-direct {p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/util/Locale;

    const-string/jumbo v0, "ur"

    invoke-direct {p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 96
    :cond_7
    sget p1, Lcom/android/settingslib/R$id;->graph_label_group:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 97
    sget p1, Lcom/android/settingslib/R$id;->bottom_label_group:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_8
    return-void
.end method

.method private setWeight(IF)V
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->addProjectedPath(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public clearPaths()V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->clearPaths()V

    return-void
.end method

.method public configureGraph(II)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/UsageGraph;->setMax(II)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->setAccentColor(I)V

    return-void
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3

    .line 151
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 155
    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 152
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDividerColors(II)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/UsageGraph;->setDividerColors(II)V

    return-void
.end method

.method public setDividerLoc(I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->setDividerLoc(I)V

    return-void
.end method

.method public setSideLabelWeights(FF)V
    .locals 1

    .line 130
    sget v0, Lcom/android/settingslib/R$id;->space1:I

    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/UsageView;->setWeight(IF)V

    .line 131
    sget p1, Lcom/android/settingslib/R$id;->space2:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/UsageView;->setWeight(IF)V

    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3

    .line 142
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 146
    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 143
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
