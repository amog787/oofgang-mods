.class public Lcom/android/server/wifi/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wifi/IOpSlaManager;


# static fields
.field private static final tsu:Ljava/lang/String; = "OpSlaManager"


# instance fields
.field private sis:Lcom/android/server/wifi/tsu;

.field private you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

.field private zta:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/wifi/sis;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v0(Z)V

    :cond_1
    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/sis;->zta:Landroid/content/Context;

    new-instance p1, Lcom/android/server/wifi/OpSlaNetlinkHelper;

    iget-object v0, p0, Lcom/android/server/wifi/sis;->zta:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wifi/sis;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    new-instance p1, Lcom/android/server/wifi/tsu;

    iget-object v0, p0, Lcom/android/server/wifi/sis;->zta:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/wifi/tsu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wifi/sis;->sis:Lcom/android/server/wifi/tsu;

    return-void
.end method

.method public sendWifiScoreToKernel(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/sis;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I1(I)V

    :cond_0
    return-void
.end method
