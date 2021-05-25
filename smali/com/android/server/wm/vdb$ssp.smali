.class Lcom/android/server/wm/vdb$ssp;
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

    iput-object p1, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p1, "OpQuickReply"

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click to go switch from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {v0}, Lcom/android/server/wm/vdb;->cjf(Lcom/android/server/wm/vdb;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2}, Lcom/android/server/wm/vdb;->cjf(Lcom/android/server/wm/vdb;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2, v0}, Lcom/android/server/wm/vdb;->ear(Lcom/android/server/wm/vdb;I)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2, v1}, Lcom/android/server/wm/vdb;->ear(Lcom/android/server/wm/vdb;I)I

    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2}, Lcom/android/server/wm/vdb;->oxb(Lcom/android/server/wm/vdb;)Lcom/android/server/wm/vdb$igw;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2}, Lcom/android/server/wm/vdb;->zta(Lcom/android/server/wm/vdb;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "quickreply_ime_position"

    iget-object v2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {v2}, Lcom/android/server/wm/vdb;->cjf(Lcom/android/server/wm/vdb;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2, v0}, Lcom/android/server/wm/vdb;->hmo(Lcom/android/server/wm/vdb;I)I

    iget-object p2, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p2}, Lcom/android/server/wm/vdb;->zta(Lcom/android/server/wm/vdb;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "quickreply_imbutton_x"

    iget-object p0, p0, Lcom/android/server/wm/vdb$ssp;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p0}, Lcom/android/server/wm/vdb;->ire(Lcom/android/server/wm/vdb;)I

    move-result p0

    invoke-static {p2, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p2, "click to go switch fail: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
