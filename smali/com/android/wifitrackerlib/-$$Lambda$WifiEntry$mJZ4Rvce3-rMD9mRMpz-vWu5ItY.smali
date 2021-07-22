.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$mJZ4Rvce3-rMD9mRMpz-vWu5ItY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$mJZ4Rvce3-rMD9mRMpz-vWu5ItY;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$mJZ4Rvce3-rMD9mRMpz-vWu5ItY;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$updateConnectionInfo$1$WifiEntry()V

    return-void
.end method
