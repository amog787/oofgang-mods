.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$StandardWifiEntry$RuC7yREceMbI61_zVW5EXFu-JHA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$StandardWifiEntry$RuC7yREceMbI61_zVW5EXFu-JHA;->f$0:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$StandardWifiEntry$RuC7yREceMbI61_zVW5EXFu-JHA;->f$0:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$connect$0(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method
