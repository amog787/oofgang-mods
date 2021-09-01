.class public Lcom/android/settings/fuelgauge/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
    }
.end annotation


# instance fields
.field mAccentColorFilter:Landroid/graphics/ColorFilter;

.field mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

.field mErrorColorFilter:Landroid/graphics/ColorFilter;

.field mForegroundColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget p2, Lcom/android/settings/R$color;->meter_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 58
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/android/settings/R$color;->op_control_accent_color_green:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    .line 60
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/android/settings/R$color;->battery_icon_color_error:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    .line 63
    new-instance p3, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-direct {p3, p1, p2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setShowPercent(Z)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setWarningColorFilter(Landroid/graphics/ColorFilter;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getCharging()Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCharging()Z

    move-result p0

    return p0
.end method

.method public setBatteryLevel(I)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDrawable.getCriticalLevel() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCriticalLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCriticalLevel()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method

.method public setCharging(Z)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 88
    sget v0, Lcom/android/settings/R$drawable;->ic_battery_lightning:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setCharging(Z)V

    .line 93
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method
