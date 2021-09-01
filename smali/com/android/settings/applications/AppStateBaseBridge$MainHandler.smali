.class Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStateBaseBridge;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 121
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    invoke-interface {p0}, Lcom/android/settings/applications/AppStateBaseBridge$Callback;->onExtraInfoUpdated()V

    :goto_0
    return-void
.end method
