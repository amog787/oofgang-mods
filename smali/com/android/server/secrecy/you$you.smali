.class Lcom/android/server/secrecy/you$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/secrecy/you;


# direct methods
.method private constructor <init>(Lcom/android/server/secrecy/you;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/you$you;->zta:Lcom/android/server/secrecy/you;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/secrecy/you;Landroid/os/Looper;Lcom/android/server/secrecy/you$zta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/you$you;-><init>(Lcom/android/server/secrecy/you;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/you$you;->zta:Lcom/android/server/secrecy/you;

    invoke-static {v0}, Lcom/android/server/secrecy/you;->sis(Lcom/android/server/secrecy/you;)V

    iget-object p0, p0, Lcom/android/server/secrecy/you$you;->zta:Lcom/android/server/secrecy/you;

    invoke-static {p0}, Lcom/android/server/secrecy/you;->you(Lcom/android/server/secrecy/you;)Lcom/android/server/secrecy/sis/sis;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/sis/sis;->bvj(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/secrecy/you$you;->zta:Lcom/android/server/secrecy/you;

    invoke-static {p1}, Lcom/android/server/secrecy/you;->zta(Lcom/android/server/secrecy/you;)V

    iget-object p0, p0, Lcom/android/server/secrecy/you$you;->zta:Lcom/android/server/secrecy/you;

    invoke-static {p0}, Lcom/android/server/secrecy/you;->you(Lcom/android/server/secrecy/you;)Lcom/android/server/secrecy/sis/sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/sis;->oif()V

    :goto_0
    return-void
.end method
