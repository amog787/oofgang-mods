.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$pw9dhfMm5LbxL1gY1jP_JJmuRkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$pw9dhfMm5LbxL1gY1jP_JJmuRkU;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$pw9dhfMm5LbxL1gY1jP_JJmuRkU;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->lambda$onStart$0(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method
