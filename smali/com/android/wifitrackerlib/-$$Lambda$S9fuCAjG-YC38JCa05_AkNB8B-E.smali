.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$S9fuCAjG-YC38JCa05_AkNB8B-E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$S9fuCAjG-YC38JCa05_AkNB8B-E;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$S9fuCAjG-YC38JCa05_AkNB8B-E;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleOnStart()V

    return-void
.end method
