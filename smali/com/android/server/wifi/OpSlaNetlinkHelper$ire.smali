.class Lcom/android/server/wifi/OpSlaNetlinkHelper$ire;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ire"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ire;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ire;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u(Lcom/android/server/wifi/OpSlaNetlinkHelper;Lorg/json/JSONArray;)V

    return-void
.end method
