.class public final synthetic Lcom/android/server/wifi/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wifi/WifiSettingsConfigStore$OnSettingsChangedListener;


# instance fields
.field public final synthetic zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/zta;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/zta;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l1(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Ljava/lang/Boolean;)V

    return-void
.end method
