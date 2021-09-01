.class public Lcom/google/android/setupdesign/view/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->checked:Z

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->checked:Z

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->checked:Z

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->checked:Z

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->checked:Z

    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .line 61
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    new-array p1, v0, [I

    const/4 v0, 0x0

    const v1, 0x10100a0

    aput v1, p1, v0

    .line 64
    invoke-static {p0, p1}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->checked:Z

    .line 73
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setChecked(Z)V

    return-void
.end method
