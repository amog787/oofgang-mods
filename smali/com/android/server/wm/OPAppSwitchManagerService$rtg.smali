.class Lcom/android/server/wm/OPAppSwitchManagerService$rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/wm/OPAppSwitchManagerService;

.field final synthetic you:Z

.field final synthetic zta:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;->sis:Lcom/android/server/wm/OPAppSwitchManagerService;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;->zta:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p3, p0, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;->you:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;->sis:Lcom/android/server/wm/OPAppSwitchManagerService;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;->zta:Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;->you:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1700(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "OPAppSwitchManagerService"

    const-string v0, " onActivityResumed error."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
