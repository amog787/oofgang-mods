.class public Lcom/oneplus/settings/widget/OPSettingsSpinner;
.super Landroid/widget/Spinner;
.source "OPSettingsSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 42
    sget p1, Lcom/android/settings/R$drawable;->op_settings_spinner_background:I

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    sget p1, Lcom/android/settings/R$drawable;->op_settings_spinner_background:I

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    sget p1, Lcom/android/settings/R$drawable;->op_settings_spinner_background:I

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    return-void
.end method
