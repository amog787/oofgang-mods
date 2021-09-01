.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 1

    .line 528
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object p1, p1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object p1, p1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1700(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V

    .line 529
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object p1, p1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object p1, p1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1700(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1900(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
