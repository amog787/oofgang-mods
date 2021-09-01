.class Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OPVibrateControlPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;-><init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mHandler:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;

    iget-object v1, v1, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;

    iget-object v0, v0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->mRegistered:Z

    return-void
.end method
