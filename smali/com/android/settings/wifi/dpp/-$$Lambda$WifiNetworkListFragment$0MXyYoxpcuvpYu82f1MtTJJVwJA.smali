.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$0MXyYoxpcuvpYu82f1MtTJJVwJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$0MXyYoxpcuvpYu82f1MtTJJVwJA;->f$0:Lcom/android/settingslib/wifi/AccessPoint;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$0MXyYoxpcuvpYu82f1MtTJJVwJA;->f$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->lambda$onAccessPointChanged$0(Lcom/android/settingslib/wifi/AccessPoint;)V

    return-void
.end method
