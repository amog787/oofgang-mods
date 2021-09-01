.class public Lcom/android/settings/ui/OPSuwPreferenceDivider;
.super Landroidx/preference/PreferenceCategory;
.source "OPSuwPreferenceDivider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 36
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    sget p1, Lcom/android/settings/R$layout;->op_suw_preference_divider:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_0
    return-void
.end method
