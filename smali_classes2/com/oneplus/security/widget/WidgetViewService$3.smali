.class Lcom/oneplus/security/widget/WidgetViewService$3;
.super Ljava/lang/Object;
.source "WidgetViewService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/widget/WidgetViewService;->loadSystemStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/widget/WidgetViewService;


# direct methods
.method constructor <init>(Lcom/oneplus/security/widget/WidgetViewService;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService$3;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 755
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService$3;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {v0}, Lcom/oneplus/security/widget/WidgetViewService;->access$600(Lcom/oneplus/security/widget/WidgetViewService;)Landroid/os/storage/StorageManager;

    move-result-object v0

    const-string v1, "WidgetViewService"

    if-nez v0, :cond_0

    const-string p0, "mStorageManager is null"

    .line 756
    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService$3;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {v0}, Lcom/oneplus/security/widget/WidgetViewService;->access$600(Lcom/oneplus/security/widget/WidgetViewService;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService$3;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {v0, v2}, Lcom/oneplus/security/utils/FileSizeUtil;->getAvailableStoragePercentValue(Landroid/os/storage/StorageManager;Landroid/content/Context;)I

    move-result v0

    .line 760
    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService$3;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {v2}, Lcom/oneplus/security/widget/WidgetViewService;->access$700(Lcom/oneplus/security/widget/WidgetViewService;)I

    move-result v2

    const-string v3, "%"

    if-ne v2, v0, :cond_1

    .line 761
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availableStorage has no change,availableStorage:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService$3;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {v2, v0}, Lcom/oneplus/security/widget/WidgetViewService;->access$702(Lcom/oneplus/security/widget/WidgetViewService;I)I

    .line 765
    new-instance v2, Lcom/oneplus/security/widget/WidgetData;

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/security/widget/WidgetViewService;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/oneplus/security/widget/WidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "availableStorage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$3;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    const/4 v0, 0x4

    const-wide/16 v3, 0x3e8

    invoke-static {p0, v0, v2, v3, v4}, Lcom/oneplus/security/widget/WidgetViewService;->access$200(Lcom/oneplus/security/widget/WidgetViewService;ILcom/oneplus/security/widget/WidgetData;J)V

    return-void
.end method
