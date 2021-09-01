.class Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;
.super Landroid/os/Handler;
.source "UstWfcStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/UstWfcStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "status"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive WFC status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$000(Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$200(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->op_data_vowlan_enable_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
