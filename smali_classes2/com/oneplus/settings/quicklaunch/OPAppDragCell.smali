.class Lcom/oneplus/settings/quicklaunch/OPAppDragCell;
.super Landroid/widget/RelativeLayout;
.source "OPAppDragCell.java"


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mSmallIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getDeleteButton()Landroid/widget/ImageView;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDeleteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDragHandle()Landroid/widget/ImageView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDragHandle:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    sget v0, Lcom/android/settings/R$id;->label:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/android/settings/R$id;->quick_launch_app_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mAppIcon:Landroid/widget/ImageView;

    .line 49
    sget v0, Lcom/android/settings/R$id;->small_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mSmallIcon:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    .line 51
    sget v0, Lcom/android/settings/R$id;->dragHandle:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDragHandle:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/android/settings/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDeleteButton:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$style;->OnePlus_TextAppearance_List_Title:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setShowAppIcon(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mAppIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 90
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 80
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setShowHandle(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDragHandle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 67
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
