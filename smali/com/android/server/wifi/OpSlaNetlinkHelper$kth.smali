.class Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vju(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->irq(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    :cond_1
    :goto_0
    return-void
.end method
