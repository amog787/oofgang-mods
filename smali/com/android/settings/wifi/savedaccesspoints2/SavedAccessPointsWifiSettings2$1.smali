.class Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2$1;
.super Landroid/os/SimpleClock;
.source "SavedAccessPointsWifiSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;Ljava/time/ZoneId;)V
    .locals 0

    .line 94
    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
