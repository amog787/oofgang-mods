.class Lyou/zta/zta/zta/tsu/you$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/zta/zta/tsu/you;->sendApplicationStopByForceStop(Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Ljava/lang/String;

.field final synthetic tsu:Lyou/zta/zta/zta/tsu/you;

.field final synthetic you:Landroid/content/Context;

.field final synthetic zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lyou/zta/zta/zta/tsu/you;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/tsu/you$tsu;->tsu:Lyou/zta/zta/zta/tsu/you;

    iput-object p2, p0, Lyou/zta/zta/zta/tsu/you$tsu;->zta:Ljava/lang/String;

    iput-object p3, p0, Lyou/zta/zta/zta/tsu/you$tsu;->you:Landroid/content/Context;

    iput-object p4, p0, Lyou/zta/zta/zta/tsu/you$tsu;->sis:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lyou/zta/zta/zta/tsu/you$tsu;->zta:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyou/zta/zta/zta/tsu/you$tsu;->you:Landroid/content/Context;

    iget-object p0, p0, Lyou/zta/zta/zta/tsu/you$tsu;->sis:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyou/zta/zta/zta/tsu/you$tsu;->you:Landroid/content/Context;

    iget-object p0, p0, Lyou/zta/zta/zta/tsu/you$tsu;->sis:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p0, v1}, Lyou/zta/zta/zta/tsu/zta;->kth(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
