.class public Lcom/google/android/setupdesign/items/ButtonItem;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "ButtonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;
    }
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field private enabled:Z

.field private listener:Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;

.field private text:Ljava/lang/CharSequence;

.field private theme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    .line 42
    sget v0, Lcom/google/android/setupdesign/R$style;->SudButtonItem:I

    iput v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    .line 42
    sget v1, Lcom/google/android/setupdesign/R$style;->SudButtonItem:I

    iput v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    .line 53
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    .line 55
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ButtonItem;->text:Ljava/lang/CharSequence;

    .line 56
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem_android_theme:I

    sget v0, Lcom/google/android/setupdesign/R$style;->SudButtonItem:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/google/android/setupdesign/R$layout;->sud_button:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method protected createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 123
    iget v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ButtonItem;->createButton(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    .line 127
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->getViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setId(I)V

    .line 138
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLayoutResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    return p0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 0

    .line 111
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot bind to ButtonItem\'s view"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->listener:Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1, p0}, Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;->onClick(Lcom/google/android/setupdesign/items/ButtonItem;)V

    :cond_0
    return-void
.end method
