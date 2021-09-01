.class public Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryStatsHelperLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mUserManager:Landroid/os/UserManager;

    .line 39
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 3

    .line 44
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;Landroid/os/Bundle;Landroid/os/UserManager;)V

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->loadInBackground()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->onDiscardResult(Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method
