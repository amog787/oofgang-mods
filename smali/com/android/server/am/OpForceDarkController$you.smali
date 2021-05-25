.class Lcom/android/server/am/OpForceDarkController$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OpForceDarkController;->handleStartingWindow(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Landroid/view/View;

.field final synthetic tsu:Lcom/android/server/am/OpForceDarkController;

.field final synthetic you:Z

.field final synthetic zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$you;->tsu:Lcom/android/server/am/OpForceDarkController;

    iput-object p2, p0, Lcom/android/server/am/OpForceDarkController$you;->zta:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/am/OpForceDarkController$you;->you:Z

    iput-object p4, p0, Lcom/android/server/am/OpForceDarkController$you;->sis:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController$you;->tsu:Lcom/android/server/am/OpForceDarkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2]handle Starting Window for { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController$you;->zta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }, Dark? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OpForceDarkController$you;->you:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController$you;->tsu:Lcom/android/server/am/OpForceDarkController;

    iget-boolean v1, p0, Lcom/android/server/am/OpForceDarkController$you;->you:Z

    invoke-static {v0, p1, v1}, Lcom/android/server/am/OpForceDarkController;->access$500(Lcom/android/server/am/OpForceDarkController;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$you;->sis:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$you;->tsu:Lcom/android/server/am/OpForceDarkController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 Remove Listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
