.class public Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;
.super Landroidx/preference/Preference;
.source "OPReverseWirelessChargingInStructionsCategory.java"


# instance fields
.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 20
    sget v0, Lcom/android/settings/R$layout;->op_reverse_wireless_charging_instructions_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;->mLayoutResId:I

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget p2, Lcom/android/settings/R$layout;->op_reverse_wireless_charging_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;->mLayoutResId:I

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget p2, Lcom/android/settings/R$layout;->op_reverse_wireless_charging_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;->mLayoutResId:I

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 47
    iget p1, p0, Lcom/oneplus/settings/ui/OPReverseWirelessChargingInStructionsCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 54
    sget v1, Lcom/android/settings/R$id;->animation_view:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x2

    const-string v2, "oem_black_mode"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    const-string p0, "reverse_wireless_charging_dark.json"

    .line 58
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "reverse_wireless_charging_light.json"

    .line 60
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
