.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$eyseTp76DXJATqUf1N-bJ_EBfOw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$eyseTp76DXJATqUf1N-bJ_EBfOw;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$eyseTp76DXJATqUf1N-bJ_EBfOw;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->lambda$updatePasspointWifiEntryConfigs$3(Ljava/util/Map;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
