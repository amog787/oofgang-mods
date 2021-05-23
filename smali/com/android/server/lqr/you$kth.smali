.class Lcom/android/server/lqr/you$kth;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lqr/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "kth"
.end annotation


# static fields
.field public static final sis:I = 0x1

.field public static final you:I


# instance fields
.field final synthetic zta:Lcom/android/server/lqr/you;


# direct methods
.method constructor <init>(Lcom/android/server/lqr/you;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lqr/you$kth;->zta:Lcom/android/server/lqr/you;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/lqr/you$kth;->zta:Lcom/android/server/lqr/you;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/lqr/you;->ugm(Lcom/android/server/lqr/you;I)V

    :goto_0
    return-void
.end method
