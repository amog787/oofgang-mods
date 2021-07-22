.class Lcom/android/settings/display/darkmode/DarkModeObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "DarkModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/darkmode/DarkModeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;


# direct methods
.method constructor <init>(Lcom/android/settings/display/darkmode/DarkModeObserver;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-static {p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->access$000(Lcom/android/settings/display/darkmode/DarkModeObserver;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
