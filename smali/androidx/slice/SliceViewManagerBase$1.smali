.class Landroidx/slice/SliceViewManagerBase$1;
.super Ljava/lang/Object;
.source "SliceViewManagerBase.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/SliceViewManagerBase;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/slice/SliceViewManagerBase;Landroid/os/Handler;)V
    .locals 0

    .line 53
    iput-object p2, p0, Landroidx/slice/SliceViewManagerBase$1;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 56
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase$1;->val$h:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
