.class final Lcom/oneplus/android/server/iris/OpIrisService$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/OpIrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/iris/OpIrisService;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/iris/OpIrisService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$tsu;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

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
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$tsu;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$400(Lcom/oneplus/android/server/iris/OpIrisService;)V

    :goto_0
    return-void
.end method
