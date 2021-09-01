.class public abstract Lcom/android/settings/fuelgauge/PowerUsageBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;
    }
.end annotation


# static fields
.field static final MENU_STATS_REFRESH:I = 0x2


# instance fields
.field private mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field protected mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(I)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$PowerUsageBase(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->lambda$onCreate$0(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string/jumbo v0, "user"

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 52
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 61
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    .line 62
    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$FbH3lnw7c_hajFOBNpt07exnLiM;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$FbH3lnw7c_hajFOBNpt07exnLiM;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 70
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 76
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->unRegister()V

    return-void
.end method

.method protected abstract refreshUi(I)V
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 2

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_type"

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V
    .locals 2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setStats(Lcom/android/internal/os/BatteryStatsHelper;)V

    const-string p0, "PowerUsageBase"

    const-string/jumbo p1, "updatePreference"

    .line 91
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
