.class Lcom/android/server/wm/OpScreenCompat$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OpScreenCompat;->isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Z

.field final synthetic tsu:Lcom/android/server/wm/OpScreenCompat;

.field final synthetic you:Lcom/android/server/wm/WindowState;

.field final synthetic zta:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenCompat;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenCompat$zta;->tsu:Lcom/android/server/wm/OpScreenCompat;

    iput-object p2, p0, Lcom/android/server/wm/OpScreenCompat$zta;->zta:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/OpScreenCompat$zta;->you:Lcom/android/server/wm/WindowState;

    iput-boolean p4, p0, Lcom/android/server/wm/OpScreenCompat$zta;->sis:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat$zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat$zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/wm/OpScreenCompat;->access$600()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpScreenCompat;->access$700()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat$zta;->you:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v2, p0, Lcom/android/server/wm/OpScreenCompat$zta;->sis:Z

    invoke-interface {v1, v2, v0}, Landroid/view/IWindow;->enterScreenCompatMode(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t send notification to win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpScreenCompat"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
