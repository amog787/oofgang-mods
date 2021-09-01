.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$pqRUdfn3mQVx4DYE6gYgaQJgj0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$pqRUdfn3mQVx4DYE6gYgaQJgj0E;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$pqRUdfn3mQVx4DYE6gYgaQJgj0E;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;->onNumSavedSubscriptionsChanged()V

    return-void
.end method
