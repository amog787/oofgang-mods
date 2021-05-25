.class Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$1;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$1;->this$0:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

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

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$1;->this$0:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    return-void
.end method
