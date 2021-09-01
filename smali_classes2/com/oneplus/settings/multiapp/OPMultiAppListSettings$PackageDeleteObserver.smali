.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    return-void
.end method

.method private synthetic lambda$packageDeleted$0(Ljava/lang/String;)V
    .locals 6

    .line 445
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 446
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 453
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->multi_app_label_badge:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 454
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 453
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 455
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v1

    const v3, 0x5f45a60

    add-int/2addr v1, v3

    .line 455
    invoke-static {p0, p1, v0, v1, v2}, Lcom/oneplus/settings/multiapp/ShortcutUtil;->removeShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$packageDeleted$0$OPMultiAppListSettings$PackageDeleteObserver(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->lambda$packageDeleted$0(Ljava/lang/String;)V

    return-void
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageDeleteObserver ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPMultiAppListSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance p2, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
