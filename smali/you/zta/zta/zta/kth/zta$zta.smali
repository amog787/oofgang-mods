.class Lyou/zta/zta/zta/kth/zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/kth/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lyou/zta/zta/zta/kth/zta;


# direct methods
.method constructor <init>(Lyou/zta/zta/zta/kth/zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v2}, Lyou/zta/zta/zta/kth/zta;->zta(Lyou/zta/zta/zta/kth/zta;)Lcom/oneplus/android/wifi/IOpWifiManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    sget-object v3, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_WIFI_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v3}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/android/wifi/IOpWifiManager;

    invoke-static {v2, v3}, Lyou/zta/zta/zta/kth/zta;->you(Lyou/zta/zta/zta/kth/zta;Lcom/oneplus/android/wifi/IOpWifiManager;)Lcom/oneplus/android/wifi/IOpWifiManager;

    :cond_0
    iget-object v2, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v2}, Lyou/zta/zta/zta/kth/zta;->zta(Lyou/zta/zta/zta/kth/zta;)Lcom/oneplus/android/wifi/IOpWifiManager;

    move-result-object v2

    const-string v3, "OnePlusQPowerManager"

    if-nez v2, :cond_1

    const-string p0, "Got a null OpWifiManager, is the system running?"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v2}, Lyou/zta/zta/zta/kth/zta;->zta(Lyou/zta/zta/zta/kth/zta;)Lcom/oneplus/android/wifi/IOpWifiManager;

    move-result-object v2

    iget-object v4, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v4}, Lyou/zta/zta/zta/kth/zta;->sis(Lyou/zta/zta/zta/kth/zta;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v4}, Lcom/oneplus/android/wifi/IOpWifiManager;->setQPower(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v2}, Lyou/zta/zta/zta/kth/zta;->sis(Lyou/zta/zta/zta/kth/zta;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Lyou/zta/zta/zta/kth/zta;->tsu(Lyou/zta/zta/zta/kth/zta;Z)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQPower "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v4}, Lyou/zta/zta/zta/kth/zta;->sis(Lyou/zta/zta/zta/kth/zta;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lyou/zta/zta/zta/kth/zta;->rtg()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set QPower "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta$zta;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {p0}, Lyou/zta/zta/zta/kth/zta;->sis(Lyou/zta/zta/zta/kth/zta;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " took "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
