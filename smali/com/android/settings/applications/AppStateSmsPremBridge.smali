.class public Lcom/android/settings/applications/AppStateSmsPremBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateSmsPremBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mSmsManager:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 36
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Landroid/telephony/SmsManager;

    return-void
.end method

.method private getSmsState(Ljava/lang/String;)I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Landroid/telephony/SmsManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->getPremiumSmsConsent(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    .locals 1

    .line 55
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getSmsState(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 6

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 45
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/settings/applications/AppStateSmsPremBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSmsState(Ljava/lang/String;I)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Landroid/telephony/SmsManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->setPremiumSmsConsent(Ljava/lang/String;I)V

    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
