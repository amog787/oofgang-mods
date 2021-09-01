.class public final synthetic Lcom/android/settings/wifi/savedaccesspoints2/-$$Lambda$SavedAccessPointsPreferenceController2$2ZyDB4u15Hj2Ajk1kfPLKH-P4cU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints2/-$$Lambda$SavedAccessPointsPreferenceController2$2ZyDB4u15Hj2Ajk1kfPLKH-P4cU;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints2/-$$Lambda$SavedAccessPointsPreferenceController2$2ZyDB4u15Hj2Ajk1kfPLKH-P4cU;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;->lambda$updatePreference$0(Ljava/lang/String;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
