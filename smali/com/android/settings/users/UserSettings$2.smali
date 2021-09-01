.class Lcom/android/settings/users/UserSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$2;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$2;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->access$202(Lcom/android/settings/users/UserSettings;I)I

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.intent.extra.user_handle"

    .line 207
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 209
    iget-object p2, p0, Lcom/android/settings/users/UserSettings$2;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p2}, Lcom/android/settings/users/UserSettings;->access$300(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 212
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$2;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->access$400(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
