.class Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 1097
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1098
    iput-object p3, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1103
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1105
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$1600(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 1106
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$1700()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnSettings;->access$1800(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1110
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    const-wide/16 v0, 0x2710

    .line 1111
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
