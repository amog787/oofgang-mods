.class Lcom/android/server/am/e$rtg;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "rtg"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/e;


# direct methods
.method public constructor <init>(Lcom/android/server/am/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/e$rtg;->zta:Lcom/android/server/am/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    return-void
.end method
