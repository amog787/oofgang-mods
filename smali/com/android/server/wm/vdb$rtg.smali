.class Lcom/android/server/wm/vdb$rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/vdb;->cgv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/wm/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/vdb$rtg;->zta:Lcom/android/server/wm/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "OpQuickReply"

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/wm/vdb$rtg;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2}, Lcom/android/server/wm/vdb;->oxb(Lcom/android/server/wm/vdb;)Lcom/android/server/wm/vdb$igw;

    move-result-object p2

    new-instance v0, Lcom/android/server/wm/vdb$rtg$zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/vdb$rtg$zta;-><init>(Lcom/android/server/wm/vdb$rtg;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p2, "click to go settings"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wm/vdb$rtg;->zta:Lcom/android/server/wm/vdb;

    invoke-virtual {p2}, Lcom/android/server/wm/vdb;->exitQuickReply()V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.oneplus.action.QUICK_REPLY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/vdb$rtg;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p0}, Lcom/android/server/wm/vdb;->zta(Lcom/android/server/wm/vdb;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "click to go settings fail: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
