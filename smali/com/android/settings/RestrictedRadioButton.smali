.class public Lcom/android/settings/RestrictedRadioButton;
.super Landroid/widget/RadioButton;
.source "RestrictedRadioButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007e

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    return p0
.end method

.method public performClick()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/widget/RadioButton;->performClick()Z

    move-result p0

    return p0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 64
    :goto_0
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 65
    iget-boolean p1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eq p1, v1, :cond_2

    .line 66
    iput-boolean v1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    .line 67
    iget-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 69
    iget-boolean p1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x437f0000    # 255.0f

    iget-object p0, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p0}, Lcom/android/settingslib/utils/ColorUtil;->getDisabledAlpha(Landroid/content/Context;)F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 70
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    :goto_1
    return-void
.end method
