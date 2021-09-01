.class public Lcom/google/android/material/tooltipview/BubbleView;
.super Landroid/widget/LinearLayout;
.source "BubbleView.java"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tooltipview/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$layout;->control_bubble_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/tooltipview/BubbleView;->initView()V

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 42
    sget v0, Lcom/google/android/material/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mTitle:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/google/android/material/R$id;->message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mMessage:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/google/android/material/R$id;->button1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    sget v0, Lcom/google/android/material/R$id;->button2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    sget v0, Lcom/google/android/material/R$id;->bubble_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object p0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mTitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p0, p0, Lcom/google/android/material/tooltipview/BubbleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
