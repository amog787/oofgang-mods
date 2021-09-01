.class Lcom/android/settings/wifi/WifiSettings2$1;
.super Landroid/os/SimpleClock;
.source "WifiSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings2;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings2;Ljava/time/ZoneId;)V
    .locals 0

    .line 265
    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
