.class Lcom/android/server/cgv/you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/cgv/sis$kth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cgv/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/cgv/you;


# direct methods
.method constructor <init>(Lcom/android/server/cgv/you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cgv/you$zta;->zta:Lcom/android/server/cgv/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public you(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/cgv/you$zta;->zta:Lcom/android/server/cgv/you;

    invoke-static {p0}, Lcom/android/server/cgv/you;->you(Lcom/android/server/cgv/you;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zta(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/cgv/you$zta;->zta:Lcom/android/server/cgv/you;

    invoke-static {p0}, Lcom/android/server/cgv/you;->you(Lcom/android/server/cgv/you;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
