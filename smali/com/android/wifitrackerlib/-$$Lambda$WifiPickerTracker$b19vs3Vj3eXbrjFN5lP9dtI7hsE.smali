.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b19vs3Vj3eXbrjFN5lP9dtI7hsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b19vs3Vj3eXbrjFN5lP9dtI7hsE;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object p2, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b19vs3Vj3eXbrjFN5lP9dtI7hsE;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b19vs3Vj3eXbrjFN5lP9dtI7hsE;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$b19vs3Vj3eXbrjFN5lP9dtI7hsE;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateSuggestedWifiEntryScans$6$WifiPickerTracker(Ljava/util/Set;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
