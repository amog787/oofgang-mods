.class Lcom/android/settings/users/UserSettings$1;
.super Landroid/os/Handler;
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

    .line 184
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v1}, Lcom/android/settings/users/UserSettings;->access$100(Lcom/android/settings/users/UserSettings;IZ)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->access$000(Lcom/android/settings/users/UserSettings;I)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    :goto_0
    return-void
.end method
