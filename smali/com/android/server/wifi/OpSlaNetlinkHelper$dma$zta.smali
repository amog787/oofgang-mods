.class Lcom/android/server/wifi/OpSlaNetlinkHelper$dma$zta;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$dma$zta;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$dma$zta;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zgw(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    return-void
.end method
