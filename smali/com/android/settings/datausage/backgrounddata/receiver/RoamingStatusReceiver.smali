.class public Lcom/android/settings/datausage/backgrounddata/receiver/RoamingStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoamingStatusReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 23
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;)V

    const-string p0, "RoamingStatusReceiver"

    const-string p1, "RoamingStatusReceiver onReceive"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
