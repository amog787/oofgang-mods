.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$n1MQJLze79Jma9-HXue3y6-3vJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$n1MQJLze79Jma9-HXue3y6-3vJ8;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$n1MQJLze79Jma9-HXue3y6-3vJ8;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiConfigurations$14$WifiPickerTracker(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
