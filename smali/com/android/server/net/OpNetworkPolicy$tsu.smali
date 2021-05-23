.class Lcom/android/server/net/OpNetworkPolicy$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/OpNetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/net/OpNetworkPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/net/OpNetworkPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$tsu;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/net/OpNetworkPolicy$tsu;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p0, p1}, Lcom/android/server/net/OpNetworkPolicy;->access$000(Lcom/android/server/net/OpNetworkPolicy;Lorg/json/JSONArray;)V

    return-void
.end method
