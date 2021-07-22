.class Landroidx/slice/widget/SliceActionView$ImageToggle;
.super Landroid/widget/ImageView;
.source "SliceActionView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageToggle"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-super {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 326
    iget-boolean p0, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 300
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->toggle()V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 331
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 332
    iget-boolean p0, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    if-eqz p0, :cond_0

    .line 333
    sget-object p0, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 310
    iget-boolean v0, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    .line 311
    iput-boolean p1, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    .line 312
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 313
    iget-object p1, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 314
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->setChecked(Z)V

    return-void
.end method
