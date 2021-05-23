.class Lcom/oneplus/server/ssp$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/ssp;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/ssp;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/ssp$you;->zta:Lcom/oneplus/server/ssp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/ssp$you;->zta:Lcom/oneplus/server/ssp;

    invoke-static {}, Lcom/oneplus/server/ssp;->sis()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/server/ssp;->tsu(Lcom/oneplus/server/ssp;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
