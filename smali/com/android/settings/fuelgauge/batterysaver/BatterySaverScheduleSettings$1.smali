.class Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;->this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;->this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 68
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;->this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    return-void
.end method
