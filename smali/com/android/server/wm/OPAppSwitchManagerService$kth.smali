.class Lcom/android/server/wm/OPAppSwitchManagerService$kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "kth"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OPAppSwitchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$kth;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$kth;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1800(Lcom/android/server/wm/OPAppSwitchManagerService;Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$kth;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$500(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$kth;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$500(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
