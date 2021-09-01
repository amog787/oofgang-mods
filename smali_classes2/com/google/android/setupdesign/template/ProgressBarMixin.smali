.class public Lcom/google/android/setupdesign/template/ProgressBarMixin;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private color:Landroid/content/res/ColorStateList;

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    return-void
.end method

.method private getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_progress_stub:I

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public isShown()Z
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_progress:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_progress:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setShown(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
