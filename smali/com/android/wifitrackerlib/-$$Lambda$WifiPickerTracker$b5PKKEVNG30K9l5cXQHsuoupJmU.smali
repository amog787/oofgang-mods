.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b5PKKEVNG30K9l5cXQHsuoupJmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b5PKKEVNG30K9l5cXQHsuoupJmU;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b5PKKEVNG30K9l5cXQHsuoupJmU;->f$0:Ljava/util/Set;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updatePasspointWifiEntryScans$7(Ljava/util/Set;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
