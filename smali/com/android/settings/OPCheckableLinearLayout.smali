.class public Lcom/android/settings/OPCheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "OPCheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field private mDisabledAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010033

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 35
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/android/settings/OPCheckableLinearLayout;->mDisabledAlpha:F

    return-void
.end method

.method private updateChecked()V
    .locals 5

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 66
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 71
    iget-boolean v4, p0, Lcom/android/settings/OPCheckableLinearLayout;->mChecked:Z

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/settings/OPCheckableLinearLayout;->mChecked:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/OPCheckableLinearLayout;->mChecked:Z

    .line 50
    invoke-direct {p0}, Lcom/android/settings/OPCheckableLinearLayout;->updateChecked()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 43
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/android/settings/OPCheckableLinearLayout;->mDisabledAlpha:F

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/OPCheckableLinearLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/OPCheckableLinearLayout;->setChecked(Z)V

    return-void
.end method
