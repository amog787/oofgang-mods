.class public Lyou/zta/zta/zta/rtg/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/location/IOpGnssLocationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/zta/zta/rtg/you$you;
    }
.end annotation


# static fields
.field private static final sis:Ljava/lang/String; = "OpGnssLocPro"


# instance fields
.field private you:Lyou/zta/zta/zta/rtg/you$you;

.field private zta:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForceMSA()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/you;->you:Lyou/zta/zta/zta/rtg/you$you;

    invoke-virtual {p0}, Lyou/zta/zta/zta/rtg/you$you;->you()Z

    move-result p0

    return p0
.end method

.method public getLogLevelStatusUpdates()Z
    .locals 2

    const-string p0, "persist.sys.assert.panic"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "persist.vendor.oem.gps.debug"

    const-string v1, "0"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/you;->you:Lyou/zta/zta/zta/rtg/you$you;

    invoke-virtual {p0, p1, p2}, Lyou/zta/zta/zta/rtg/you$you;->zta(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/you;->zta:Landroid/content/Context;

    new-instance p1, Lyou/zta/zta/zta/rtg/you$you;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lyou/zta/zta/zta/rtg/you$you;-><init>(Lyou/zta/zta/zta/rtg/you;Lyou/zta/zta/zta/rtg/you$zta;)V

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/you;->you:Lyou/zta/zta/zta/rtg/you$you;

    return-void
.end method

.method public isDisableDeviceIdle()Z
    .locals 0

    invoke-static {}, Lyou/zta/zta/zta/rtg/sis;->you()Z

    move-result p0

    return p0
.end method

.method public resetForceMSA()V
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/you;->you:Lyou/zta/zta/zta/rtg/you$you;

    invoke-virtual {p0}, Lyou/zta/zta/zta/rtg/you$you;->sis()V

    return-void
.end method
