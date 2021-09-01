.class Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "OPDeleteNonRequiredAppsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private final mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;I)V
    .locals 1

    .line 369
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 367
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 370
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1

    const-string p1, "DeleteNonRequiredAppsTask"

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const-string p2, "Could not finish the provisioning: package deletion failed"

    .line 376
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->access$000(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;)Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onError()V

    return-void

    .line 381
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "All non-required system apps with launcher icon, and all disallowed apps have been uninstalled."

    .line 383
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->access$000(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;)Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    :cond_1
    return-void
.end method
