.class public Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
.super Landroid/app/Activity;
.source "OPPowerOffPromptActivity.java"


# instance fields
.field private alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private mResume:Z

.field private mShutdownDialog:Landroid/app/ProgressDialog;

.field private mStatus:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 33
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 36
    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    const/16 v1, 0x3c

    .line 188
    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 189
    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    .line 194
    new-instance v0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/settings/ui/OPTimerDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->cancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return p0
.end method

.method static synthetic access$410(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return p0
.end method

.method static synthetic access$610(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 270
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x20000001

    const-string v2, "TimepowerWakeLock"

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 275
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->dismiss()V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->finish()V

    return-void
.end method

.method private dismissShutdownDialog()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private raiseScreenUp()V
    .locals 3

    const-string v0, "power"

    .line 290
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const v1, 0x30000006

    const-string v2, "TimepowerWakeLock"

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 295
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 296
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 171
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->releaseWakeLock()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "phone"

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    const-string v0, "time"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    :cond_0
    const v0, 0x180480

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "power"

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 65
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->raiseScreenUp()V

    .line 69
    new-instance p1, Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/OPTimerDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_timer_shutdown_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->setTitle(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_timer_shutdown_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 72
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->oneplus_timer_shutdown_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    const/16 v3, 0x3c

    .line 75
    invoke-virtual {p1, v0, v2, v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 100
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->oneplus_timer_shutdown_nagative:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    const/16 v3, 0xa

    .line 100
    invoke-virtual {p1, v0, v2, v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 113
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->show()V

    .line 114
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    const/4 v0, -0x1

    iget v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->setButtonType(IIZ)V

    .line 116
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    const v0, 0x104076e

    .line 118
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->dismissShutdownDialog()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    iget p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    const-string v0, "time"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 159
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->acquireWakeLock()V

    return-void
.end method
