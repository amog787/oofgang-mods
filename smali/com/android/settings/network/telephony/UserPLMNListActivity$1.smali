.class Lcom/android/settings/network/telephony/UserPLMNListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UserPLMNListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/UserPLMNListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$102(Lcom/android/settings/network/telephony/UserPLMNListActivity;Z)Z

    .line 133
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-static {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$200(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V

    goto :goto_1

    :cond_0
    const-string v0, "com.qualcomm.qti.intent.action.ACTION_READ_EF_RESULT"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "exception"

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ACTION_READ_EF_BROADCAST with exception"

    .line 136
    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$300(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$400(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 138
    iput v1, p1, Landroid/os/Message;->what:I

    .line 139
    new-instance p2, Landroid/os/AsyncResult;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-static {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$400(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 143
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    const-string p1, "payload"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->handleGetEFDone([B)V

    goto :goto_1

    :cond_2
    const-string v0, "com.qualcomm.qti.intent.action.ACTION_WRITE_EF_RESULT"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ACTION_WRITE_EF_BROADCAST with exception"

    .line 147
    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$300(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "handleSetEFDone: with OK result!"

    .line 149
    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$300(Ljava/lang/String;)V

    .line 151
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-static {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$500(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V

    :cond_4
    :goto_1
    return-void
.end method
