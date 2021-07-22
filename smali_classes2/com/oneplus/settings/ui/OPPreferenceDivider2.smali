.class public Lcom/oneplus/settings/ui/OPPreferenceDivider2;
.super Landroid/preference/PreferenceCategory;
.source "OPPreferenceDivider2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDivider2;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDivider2;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 30
    sget p1, Lcom/android/settings/R$layout;->op_preference_divider:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    return-void
.end method
