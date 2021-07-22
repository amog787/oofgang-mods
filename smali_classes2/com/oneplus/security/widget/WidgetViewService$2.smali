.class Lcom/oneplus/security/widget/WidgetViewService$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/oneplus/security/widget/WidgetViewService;Landroid/os/Handler;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService$2;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 727
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$2;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    const/4 p1, 0x6

    const/4 p2, 0x0

    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oneplus/security/widget/WidgetViewService;->access$200(Lcom/oneplus/security/widget/WidgetViewService;ILcom/oneplus/security/widget/WidgetData;J)V

    return-void
.end method
