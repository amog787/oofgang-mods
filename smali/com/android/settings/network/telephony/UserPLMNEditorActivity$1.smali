.class Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UserPLMNEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/UserPLMNEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    const/4 v0, 0x0

    const-string v1, "state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->access$002(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;Z)Z

    .line 110
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-static {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->access$100(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V

    :cond_0
    return-void
.end method
