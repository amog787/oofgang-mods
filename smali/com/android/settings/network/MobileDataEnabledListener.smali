.class public Lcom/android/settings/network/MobileDataEnabledListener;
.super Ljava/lang/Object;
.source "MobileDataEnabledListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileDataEnabledListener$Client;
    }
.end annotation


# instance fields
.field private mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/network/GlobalSettingsChangeListener;

.field private mListenerForSubId:Lcom/android/settings/network/GlobalSettingsChangeListener;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/MobileDataEnabledListener;)Lcom/android/settings/network/MobileDataEnabledListener$Client;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/MobileDataEnabledListener;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/network/MobileDataEnabledListener;->stopMonitor()V

    return-void
.end method

.method private stopMonitor()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/GlobalSettingsChangeListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/GlobalSettingsChangeListener;

    :cond_0
    return-void
.end method

.method private stopMonitorSubIdSpecific()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/GlobalSettingsChangeListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/GlobalSettingsChangeListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public getSubId()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    return p0
.end method

.method public start(I)V
    .locals 3

    .line 59
    iput p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    .line 61
    iget-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/GlobalSettingsChangeListener;

    const-string v0, "mobile_data"

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Lcom/android/settings/network/MobileDataEnabledListener$1;

    iget-object v1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/settings/network/MobileDataEnabledListener$1;-><init>(Lcom/android/settings/network/MobileDataEnabledListener;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/GlobalSettingsChangeListener;

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/MobileDataEnabledListener;->stopMonitorSubIdSpecific()V

    .line 71
    iget p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return-void

    .line 75
    :cond_1
    new-instance p1, Lcom/android/settings/network/MobileDataEnabledListener$2;

    iget-object v1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v1, v0}, Lcom/android/settings/network/MobileDataEnabledListener$2;-><init>(Lcom/android/settings/network/MobileDataEnabledListener;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/GlobalSettingsChangeListener;

    return-void
.end method

.method public stop()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/network/MobileDataEnabledListener;->stopMonitor()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/network/MobileDataEnabledListener;->stopMonitorSubIdSpecific()V

    return-void
.end method
