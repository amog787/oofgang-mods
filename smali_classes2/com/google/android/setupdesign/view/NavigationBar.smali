.class public Lcom/google/android/setupdesign/view/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;
    }
.end annotation


# instance fields
.field private backButton:Landroid/widget/Button;

.field private listener:Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;

.field private moreButton:Landroid/widget/Button;

.field private nextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method private static getNavbarTheme(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 54
    sget v2, Lcom/google/android/setupdesign/R$attr;->sudNavBarTheme:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x1010030

    const/4 v4, 0x1

    aput v2, v1, v4

    const v2, 0x1010031

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v0, [F

    new-array v0, v0, [F

    .line 68
    invoke-virtual {p0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 69
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 70
    aget v1, v1, v5

    aget v0, v0, v5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_1

    .line 71
    sget v0, Lcom/google/android/setupdesign/R$style;->SudNavBarThemeDark:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/setupdesign/R$style;->SudNavBarThemeLight:I

    :goto_0
    move v1, v0

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private static getThemedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 78
    invoke-static {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->getNavbarTheme(Landroid/content/Context;)I

    move-result v0

    .line 79
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_navbar_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_navbar_next:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->nextButton:Landroid/widget/Button;

    .line 108
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_navbar_back:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->backButton:Landroid/widget/Button;

    .line 109
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_navbar_more:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->moreButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->backButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getMoreButton()Landroid/widget/Button;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->moreButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->listener:Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->listener:Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;

    invoke-interface {p0}, Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;->onNavigateBack()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 138
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->listener:Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;

    invoke-interface {p0}, Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;->onNavigateNext()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNavigationBarListener(Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/android/setupdesign/view/NavigationBar;->listener:Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
