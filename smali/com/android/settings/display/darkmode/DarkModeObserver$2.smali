.class Lcom/android/settings/display/darkmode/DarkModeObserver$2;
.super Landroid/database/ContentObserver;
.source "DarkModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/darkmode/DarkModeObserver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;


# direct methods
.method constructor <init>(Lcom/android/settings/display/darkmode/DarkModeObserver;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver$2;->this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver$2;->this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-static {p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;->access$000(Lcom/android/settings/display/darkmode/DarkModeObserver;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver$2;->this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-static {p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->access$000(Lcom/android/settings/display/darkmode/DarkModeObserver;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
