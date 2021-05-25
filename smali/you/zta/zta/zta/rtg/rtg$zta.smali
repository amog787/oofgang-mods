.class Lyou/zta/zta/zta/rtg/rtg$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/rtg/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lyou/zta/zta/zta/rtg/rtg;


# direct methods
.method constructor <init>(Lyou/zta/zta/zta/rtg/rtg;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/rtg$zta;->zta:Lyou/zta/zta/zta/rtg/rtg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
    iget-object p0, p0, Lyou/zta/zta/zta/rtg/rtg$zta;->zta:Lyou/zta/zta/zta/rtg/rtg;

    invoke-virtual {p0}, Lyou/zta/zta/zta/rtg/rtg;->mdmGetLocSwitchData()Z

    :goto_0
    return-void
.end method
