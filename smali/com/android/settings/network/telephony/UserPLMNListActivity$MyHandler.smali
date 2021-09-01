.class Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;
.super Landroid/os/Handler;
.source "UserPLMNListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/UserPLMNListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;Lcom/android/settings/network/telephony/UserPLMNListActivity$1;)V
    .locals 0

    .line 611
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V

    return-void
.end method


# virtual methods
.method public handleGetUPLMNList(Landroid/os/Message;)V
    .locals 3

    const-string v0, "handleGetUPLMNList: done"

    .line 626
    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$300(Ljava/lang/String;)V

    .line 629
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$600(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$600(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 635
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 636
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetUPLMNList with exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$300(Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$700(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 640
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$702(Lcom/android/settings/network/telephony/UserPLMNListActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 643
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;->this$0:Lcom/android/settings/network/telephony/UserPLMNListActivity;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->access$800(Lcom/android/settings/network/telephony/UserPLMNListActivity;Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 615
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;->handleGetUPLMNList(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
