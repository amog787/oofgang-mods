.class public Lcom/oneplus/settings/controllers/UstWfcStatusTracker;
.super Ljava/lang/Object;
.source "UstWfcStatusTracker.java"


# instance fields
.field private mBound:Z

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/Preference;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mBound:Z

    .line 37
    new-instance v0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;-><init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V

    iput-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;-><init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V

    iput-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    const-string v0, "Init..."

    .line 78
    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mPreference:Landroidx/preference/Preference;

    if-eqz p2, :cond_0

    .line 83
    new-instance p1, Landroid/os/Messenger;

    iget-object p2, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mClientMessenger:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mServiceMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mBound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mClientMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UstWfcStatusTracker]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UstWfcStatusTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public startObserve()V
    .locals 3

    const-string v0, "Start observe"

    .line 89
    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.TMO_WFC_TRACKER_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.operator.tmo.wfctracker"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public stopObserve()V
    .locals 2

    const-string v0, "Stop observe"

    .line 96
    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mBound:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mClientMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
