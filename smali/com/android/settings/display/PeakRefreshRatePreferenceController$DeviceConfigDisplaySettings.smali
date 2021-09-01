.class Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "PeakRefreshRatePreferenceController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PeakRefreshRatePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceConfigDisplaySettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;Lcom/android/settings/display/PeakRefreshRatePreferenceController$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;-><init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->access$300(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->access$300(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getDefaultPeakRefreshRate()F
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "peak_refresh_rate_default"

    const/high16 v1, -0x40800000    # -1.0f

    .line 157
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConfig getDefaultPeakRefreshRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshRatePrefCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->access$200(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->access$200(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;->onDefaultRefreshRateChanged()V

    .line 173
    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->access$100(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 1

    const-string v0, "display_manager"

    .line 145
    invoke-static {v0, p0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public stopListening()V
    .locals 0

    .line 152
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
