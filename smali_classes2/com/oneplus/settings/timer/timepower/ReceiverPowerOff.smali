.class public Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverPowerOff.java"


# static fields
.field private static mIsCalling:Z = false

.field private static mIsPoweroff:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPowerOffPromptRunnable:Ljava/lang/Runnable;

.field private mPoweroffAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;-><init>(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private isUsingTheme(Landroid/content/Context;)Z
    .locals 1

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_is_using_theme"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private rememberShutdownRequestMissed(Landroid/content/Context;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_shutdown_request_missed"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "keyguard"

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 50
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings.ShutdownWhenLocked"

    goto :goto_0

    :cond_1
    const-string v1, "com.android.settings.Shutdown"

    :goto_0
    const-string v2, "com.android.settings.POWER_OFF"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "trigger_time"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    cmp-long p2, v5, v7

    if-ltz p2, :cond_2

    return-void

    .line 61
    :cond_2
    sget-boolean p2, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    if-eqz p2, :cond_3

    .line 62
    sput-boolean v3, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    return-void

    :cond_3
    const-string p2, "phone want to turn off now !"

    .line 66
    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->isUsingTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "ReceiverPowerOff"

    const-string v0, "time to shutdown when changing theme, so delay shutdown"

    .line 71
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->rememberShutdownRequestMissed(Landroid/content/Context;)V

    return-void

    .line 78
    :cond_4
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 79
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string v2, "android.intent.action.PHONE_STATE"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "state"

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    :cond_6
    sput-boolean v3, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    .line 88
    :cond_7
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 89
    sput-boolean v4, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    .line 90
    sget-boolean p2, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    if-eqz p2, :cond_8

    .line 91
    sput-boolean v4, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    .line 92
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    .line 93
    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_1
    return-void
.end method
