.class Lcom/android/server/engineer/OneplusEngineerService$bio;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "bio"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method public constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$bio;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method
