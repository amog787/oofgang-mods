.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->showWarnigDialog(I)V
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

    .line 373
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1002(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z

    return-void
.end method
