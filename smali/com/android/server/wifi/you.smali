.class public final synthetic Lcom/android/server/wifi/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wifi/WifiSettingsConfigStore$OnSettingsChangedListener;


# instance fields
.field public final synthetic zta:Lcom/android/server/wifi/tsu;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/tsu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/you;->zta:Lcom/android/server/wifi/tsu;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/you;->zta:Lcom/android/server/wifi/tsu;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/tsu;->wtn(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Ljava/lang/Boolean;)V

    return-void
.end method
