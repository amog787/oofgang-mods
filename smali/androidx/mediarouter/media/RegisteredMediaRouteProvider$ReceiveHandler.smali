.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 979
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 980
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processMessage(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p5, :cond_0

    .line 1028
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_7

    .line 1029
    :cond_0
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p4, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onDynamicRouteDescriptorsChanged(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 1051
    :pswitch_1
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 1052
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onDynamicGroupRouteControllerCreated(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    const-string p0, "MediaRouteProviderProxy"

    const-string p1, "No further information on the dynamic group controller"

    .line 1055
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    if-eqz p5, :cond_2

    .line 1022
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_7

    .line 1023
    :cond_2
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onDescriptorChanged(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_3
    if-eqz p5, :cond_3

    .line 1042
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_7

    :cond_3
    if-nez p6, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const-string p0, "error"

    .line 1044
    invoke-virtual {p6, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1045
    :goto_0
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p0, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_4
    if-eqz p5, :cond_5

    .line 1035
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_7

    .line 1036
    :cond_5
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onControlRequestSucceeded(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_5
    if-eqz p5, :cond_6

    .line 1016
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_7

    .line 1017
    :cond_6
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p4, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onRegistered(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 1012
    :pswitch_6
    invoke-virtual {p1, p3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onGenericSuccess(I)Z

    return p0

    .line 1008
    :pswitch_7
    invoke-virtual {p1, p3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onGenericFailure(I)Z

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 984
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 989
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v2, :cond_0

    .line 991
    iget v3, p1, Landroid/os/Message;->what:I

    .line 992
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 993
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 994
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 995
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v7

    move-object v1, p0

    .line 996
    invoke-direct/range {v1 .. v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->processMessage(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 997
    sget-boolean p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 998
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message from server: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouteProviderProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
