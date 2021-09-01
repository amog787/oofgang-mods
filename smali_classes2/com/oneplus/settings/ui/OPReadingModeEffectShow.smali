.class public Lcom/oneplus/settings/ui/OPReadingModeEffectShow;
.super Landroidx/preference/Preference;
.source "OPReadingModeEffectShow.java"


# instance fields
.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 11
    sget v0, Lcom/android/settings/R$layout;->op_reading_mode_effect_show:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    sget p2, Lcom/android/settings/R$layout;->op_reading_mode_effect_show:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    .line 20
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    sget p2, Lcom/android/settings/R$layout;->op_reading_mode_effect_show:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 30
    iget p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method
