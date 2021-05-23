.class final Lcom/android/server/wm/OPAppSwitchManagerService$bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "bio"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/wm/OPAppSwitchManagerService;

.field you:Lcom/oplus/app/OplusAppSwitchConfig;

.field final zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$bio;->sis:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService$bio;->zta:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/OPAppSwitchManagerService$bio;->you:Lcom/oplus/app/OplusAppSwitchConfig;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hanldeBinderDied config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$bio;->you:Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$bio;->sis:Lcom/android/server/wm/OPAppSwitchManagerService;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$bio;->zta:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$bio;->you:Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    return-void
.end method
