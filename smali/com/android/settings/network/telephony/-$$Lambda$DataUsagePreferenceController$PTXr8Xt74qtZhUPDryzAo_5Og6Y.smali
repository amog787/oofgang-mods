.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$DataUsagePreferenceController$PTXr8Xt74qtZhUPDryzAo_5Og6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/DataUsagePreferenceController;

.field public final synthetic f$1:Lcom/android/settingslib/net/DataUsageController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/DataUsagePreferenceController;Lcom/android/settingslib/net/DataUsageController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$DataUsagePreferenceController$PTXr8Xt74qtZhUPDryzAo_5Og6Y;->f$0:Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$DataUsagePreferenceController$PTXr8Xt74qtZhUPDryzAo_5Og6Y;->f$1:Lcom/android/settingslib/net/DataUsageController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$DataUsagePreferenceController$PTXr8Xt74qtZhUPDryzAo_5Og6Y;->f$0:Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$DataUsagePreferenceController$PTXr8Xt74qtZhUPDryzAo_5Og6Y;->f$1:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->lambda$getDataUsageSummary$1$DataUsagePreferenceController(Lcom/android/settingslib/net/DataUsageController;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
