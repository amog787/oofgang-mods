.class Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;
.super Ljava/lang/Object;
.source "ReceiverPowerOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ReceiverPowerOff"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 108
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cls:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.incallui"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.incallui.OppoInCallActivity"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$300(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$200(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$300(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$200(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPoweroffAction = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    .line 124
    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
