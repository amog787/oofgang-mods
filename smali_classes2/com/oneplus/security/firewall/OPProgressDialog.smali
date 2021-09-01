.class public Lcom/oneplus/security/firewall/OPProgressDialog;
.super Landroid/app/ProgressDialog;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mStartTime:J

.field private mTimeOut:J

.field private mTimeOutListener:Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 118
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimeOut:J

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimeOutListener:Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;

    .line 23
    iput-object p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimer:Ljava/util/Timer;

    .line 35
    new-instance p1, Lcom/oneplus/security/firewall/OPProgressDialog$1;

    invoke-direct {p1, p0}, Lcom/oneplus/security/firewall/OPProgressDialog$1;-><init>(Lcom/oneplus/security/firewall/OPProgressDialog;)V

    iput-object p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/security/firewall/OPProgressDialog;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/oneplus/security/firewall/OPProgressDialog;)Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimeOutListener:Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/firewall/OPProgressDialog;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 158
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStart()V

    .line 159
    iget-wide v0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimer:Ljava/util/Timer;

    .line 161
    new-instance v0, Lcom/oneplus/security/firewall/OPProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/security/firewall/OPProgressDialog$2;-><init>(Lcom/oneplus/security/firewall/OPProgressDialog;)V

    .line 168
    iget-object v1, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimer:Ljava/util/Timer;

    iget-wide v2, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimeOut:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 148
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStop()V

    .line 149
    iget-object v0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/oneplus/security/firewall/OPProgressDialog;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
