.class Lcom/oneplus/security/SecureService$AsynHandler;
.super Landroid/os/Handler;
.source "SecureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/SecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsynHandler"
.end annotation


# instance fields
.field private final serviceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/security/SecureService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/oneplus/security/SecureService;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oneplus/security/SecureService$AsynHandler;->serviceReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 117
    iget-object p0, p0, Lcom/oneplus/security/SecureService$AsynHandler;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/SecureService;

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ltz p1, :cond_3

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {p0, p1}, Lcom/oneplus/security/SecureService;->access$100(Lcom/oneplus/security/SecureService;I)V

    goto :goto_1

    .line 130
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/oneplus/security/SecureService;->access$000(Lcom/oneplus/security/SecureService;)V

    goto :goto_1

    .line 123
    :cond_4
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->onReceiveNetWorkStateChanged(Landroid/content/Context;)V

    .line 124
    invoke-static {p0}, Lcom/oneplus/security/SecureService;->access$000(Lcom/oneplus/security/SecureService;)V

    :goto_1
    return-void
.end method
