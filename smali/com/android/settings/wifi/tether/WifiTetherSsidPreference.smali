.class public Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;
.super Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;
.source "WifiTetherSsidPreference.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mShareIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource does not exist: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiTetherSsidPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private initialize()V
    .locals 1

    .line 71
    sget v0, Lcom/android/settings/R$layout;->op_preference_two_target:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 72
    sget v0, Lcom/android/settings/R$layout;->wifi_button_preference_widget:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 74
    sget v0, Lcom/android/settings/R$drawable;->ic_qrcode_24dp:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mShareIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method isQrCodeButtonAvailable()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 81
    sget v0, Lcom/android/settings/R$id;->button_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 82
    sget v1, Lcom/android/settings/R$id;->two_target_divider:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 84
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_dpp_share_hotspot:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mShareIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    return-void
.end method
