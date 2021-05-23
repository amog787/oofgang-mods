.class Lcom/android/server/am/f$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# static fields
.field public static final you:I


# instance fields
.field final synthetic zta:Lcom/android/server/am/f;


# direct methods
.method constructor <init>(Lcom/android/server/am/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {p1}, Lcom/android/server/am/f;->ibl(Lcom/android/server/am/f;)V

    iget-object p0, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {p0}, Lcom/android/server/am/f;->gwm(Lcom/android/server/am/f;)V

    :goto_0
    return-void
.end method
