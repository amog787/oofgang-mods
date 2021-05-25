.class Lcom/android/server/policy/OpPhoneWindowManager$cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$cno;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$cno;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2200(Lcom/android/server/policy/OpPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$cno;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2300(Lcom/android/server/policy/OpPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$cno;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2202(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$cno;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method
