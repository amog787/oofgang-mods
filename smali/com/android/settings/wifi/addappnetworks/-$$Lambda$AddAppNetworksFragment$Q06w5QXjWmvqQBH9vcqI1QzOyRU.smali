.class public final synthetic Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$Q06w5QXjWmvqQBH9vcqI1QzOyRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/hotspot2/PasspointConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$Q06w5QXjWmvqQBH9vcqI1QzOyRU;->f$0:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$Q06w5QXjWmvqQBH9vcqI1QzOyRU;->f$0:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->lambda$isSavedPasspointConfiguration$0(Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result p0

    return p0
.end method
