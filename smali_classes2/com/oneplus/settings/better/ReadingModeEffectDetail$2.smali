.class Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;
.super Ljava/lang/Object;
.source "ReadingModeEffectDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/ReadingModeEffectDetail;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v0, "read_app"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$200()Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object p2

    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$000()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    .line 107
    invoke-static {v2}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p2, v1, v2, v3}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->setAppEffectSelect(ILjava/lang/String;I)V

    .line 108
    iget-object p0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-static {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "bw"

    invoke-static {v0, p2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$200()Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object p2

    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$000()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    .line 101
    invoke-static {v2}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 100
    invoke-virtual {p2, v1, v2, v3}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->setAppEffectSelect(ILjava/lang/String;I)V

    .line 102
    iget-object p0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-static {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "clr"

    invoke-static {v0, p2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
