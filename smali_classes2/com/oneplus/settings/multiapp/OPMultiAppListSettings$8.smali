.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 2

    .line 476
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 477
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 478
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->oneplus_multi_app_init_failed_for_more_users:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 480
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->oneplus_multi_app_init_failed:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
