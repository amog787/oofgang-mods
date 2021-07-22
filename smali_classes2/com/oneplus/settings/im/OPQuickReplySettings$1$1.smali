.class Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;
.super Ljava/lang/Object;
.source "OPQuickReplySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/im/OPQuickReplySettings$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/im/OPQuickReplySettings$1;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iput-object p2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 98
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object v0, v0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    .line 100
    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickReplyAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    .line 102
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickReplyAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    .line 109
    invoke-virtual {p2, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quickReplyApp.delete error for index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", replyApp:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", quickReplyApp:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPQuickReplySettings"

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "enable_freeform_support"

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object p1, p1, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    .line 126
    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$400(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    .line 125
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object p1, p1, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    .line 130
    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$500(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 129
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;

    move-result-object p0

    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickReplyAppLisStrings(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyIMStatus()V

    return v0
.end method
