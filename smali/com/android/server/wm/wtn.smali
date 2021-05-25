.class public final synthetic Lcom/android/server/wm/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:Landroid/os/Bundle;

.field public final synthetic zta:Lcom/android/server/wm/OpWindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OpWindowManagerService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/wtn;->zta:Lcom/android/server/wm/OpWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/wtn;->you:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/wtn;->zta:Lcom/android/server/wm/OpWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/wtn;->you:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/OpWindowManagerService;->rtg(Landroid/os/Bundle;)V

    return-void
.end method
