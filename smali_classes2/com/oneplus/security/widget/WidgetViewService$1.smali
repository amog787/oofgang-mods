.class Lcom/oneplus/security/widget/WidgetViewService$1;
.super Landroid/os/storage/StorageEventListener;
.source "WidgetViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/widget/WidgetViewService;
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

    .line 707
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService$1;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$1;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->loadSystemStorage()V

    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$1;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->loadSystemStorage()V

    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$1;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->loadSystemStorage()V

    return-void
.end method
