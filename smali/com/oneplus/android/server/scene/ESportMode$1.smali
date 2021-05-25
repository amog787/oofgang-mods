.class Lcom/oneplus/android/server/scene/ESportMode$1;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/ESportMode;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/ESportMode;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/ESportMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode$1;->this$0:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode$1;->this$0:Lcom/oneplus/android/server/scene/ESportMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/android/server/scene/ESportMode;->access$002(Lcom/oneplus/android/server/scene/ESportMode;Z)Z

    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ESportMode$1;->this$0:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/ESportMode;->access$000(Lcom/oneplus/android/server/scene/ESportMode;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ywr$zta;->bud(Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ESportMode$1;->this$0:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/ESportMode;->access$100(Lcom/oneplus/android/server/scene/ESportMode;Z)V

    return-void
.end method
