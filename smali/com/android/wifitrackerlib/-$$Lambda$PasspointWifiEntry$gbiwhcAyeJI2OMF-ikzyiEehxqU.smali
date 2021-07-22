.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$PasspointWifiEntry$gbiwhcAyeJI2OMF-ikzyiEehxqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/PasspointWifiEntry;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/PasspointWifiEntry;Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointWifiEntry$gbiwhcAyeJI2OMF-ikzyiEehxqU;->f$0:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iput-object p2, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointWifiEntry$gbiwhcAyeJI2OMF-ikzyiEehxqU;->f$1:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointWifiEntry$gbiwhcAyeJI2OMF-ikzyiEehxqU;->f$0:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointWifiEntry$gbiwhcAyeJI2OMF-ikzyiEehxqU;->f$1:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->lambda$disconnect$0$PasspointWifiEntry(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return-void
.end method
