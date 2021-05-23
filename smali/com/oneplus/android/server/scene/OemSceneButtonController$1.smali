.class Lcom/oneplus/android/server/scene/OemSceneButtonController$1;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneButtonController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneButtonController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController$1;->this$0:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController$1;->this$0:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->updateFunctionRule(I)V

    return-void
.end method
