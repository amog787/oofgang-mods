.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

    iput p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 2

    .line 182
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x58

    .line 183
    iput v0, p1, Landroid/os/Message;->what:I

    .line 184
    iget v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;->val$position:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$700(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

    iget-object p1, p1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notification_badging"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 188
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v1, 0x3e7

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
