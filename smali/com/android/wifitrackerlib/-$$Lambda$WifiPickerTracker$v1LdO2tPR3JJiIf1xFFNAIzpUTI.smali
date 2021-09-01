.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$v1LdO2tPR3JJiIf1xFFNAIzpUTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$v1LdO2tPR3JJiIf1xFFNAIzpUTI;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object p2, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$v1LdO2tPR3JJiIf1xFFNAIzpUTI;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$v1LdO2tPR3JJiIf1xFFNAIzpUTI;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$v1LdO2tPR3JJiIf1xFFNAIzpUTI;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateOsuWifiEntryScans$8$WifiPickerTracker(Ljava/util/Map;Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    return-void
.end method
