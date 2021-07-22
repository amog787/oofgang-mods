.class public Lcom/google/android/material/bottomnavigation/BottomActionModeView;
.super Landroid/widget/LinearLayout;
.source "BottomActionModeView.java"


# instance fields
.field private mNegativeButton:Landroid/widget/TextView;

.field private mPositiveButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomActionModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    sget v0, Lcom/google/android/material/R$attr;->bottomActionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomActionModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$layout;->control_bottom_actionmode_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomActionModeView;->initView()V

    const/16 p1, 0x8

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 113
    sget v0, Lcom/google/android/material/R$id;->positive_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomActionModeView;->mPositiveButton:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/google/android/material/R$id;->negative_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomActionModeView;->mNegativeButton:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getNegativeButton()Landroid/widget/TextView;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomActionModeView;->mNegativeButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public getPositiveButton()Landroid/widget/TextView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomActionModeView;->mPositiveButton:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method
