.class Lcom/android/server/am/SocketTransition$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SocketTransition;->initOMMAppRecord(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/SocketTransition;


# direct methods
.method constructor <init>(Lcom/android/server/am/SocketTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SocketTransition$you;->zta:Lcom/android/server/am/SocketTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$you;->zta:Lcom/android/server/am/SocketTransition;

    invoke-static {p0}, Lcom/android/server/am/SocketTransition;->access$1600(Lcom/android/server/am/SocketTransition;)V

    return-void
.end method
