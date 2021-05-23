.class Lcom/android/server/am/OpForceDarkController$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OpForceDarkController;->initAppOps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OpForceDarkController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$sis;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$sis;->zta:Lcom/android/server/am/OpForceDarkController;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/android/server/am/OpForceDarkController;->access$700(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object p1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, p2, v3, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController$sis;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v2}, Lcom/android/server/am/OpForceDarkController;->access$800(Lcom/android/server/am/OpForceDarkController;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/android/server/am/OpForceDarkController$ssp;->oif(II)V

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController$sis;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v1, p2}, Lcom/android/server/am/OpForceDarkController;->access$900(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController$sis;->zta:Lcom/android/server/am/OpForceDarkController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_hasEnableParallel_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-interface {v1, p2, v3, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$sis;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController;->access$800(Lcom/android/server/am/OpForceDarkController;)Landroid/app/AppOpsManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0, v1}, Lcom/android/server/am/OpForceDarkController$ssp;->oif(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPFD_CTRL_SVC"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
