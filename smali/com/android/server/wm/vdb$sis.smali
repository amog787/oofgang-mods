.class Lcom/android/server/wm/vdb$sis;
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

    iput-object p1, p0, Lcom/android/server/wm/vdb$sis;->zta:Lcom/android/server/wm/vdb;

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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click to full button app="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/vdb$sis;->zta:Lcom/android/server/wm/vdb;

    invoke-static {v0}, Lcom/android/server/wm/vdb;->obl(Lcom/android/server/wm/vdb;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/vdb$sis;->zta:Lcom/android/server/wm/vdb;

    invoke-virtual {p0}, Lcom/android/server/wm/vdb;->exitQuickReply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "click to full button fail: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
