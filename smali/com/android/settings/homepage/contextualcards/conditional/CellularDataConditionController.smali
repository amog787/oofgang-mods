.class public Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;
.super Ljava/lang/Object;
.source "CellularDataConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$OPPhoneStateListener;
    }
.end annotation


# static fields
.field static final ID:I


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIsListeningConnectionChange:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CellularDataConditionController"

    aput-object v2, v0, v1

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->getDefaultDataSubscriptionId(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mSubId:I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;

    const-string v0, "multi_sim_data_call"

    invoke-direct {p2, p0, p1, v0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$OPPhoneStateListener;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-direct {p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$OPPhoneStateListener;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;Landroid/content/Context;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->getDefaultDataSubscriptionId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mSubId:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mSubId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mIsListeningConnectionChange:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;Landroid/content/Context;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->restartPhoneStateListener(Landroid/content/Context;I)V

    return-void
.end method

.method private getDefaultDataSubscriptionId(Landroid/content/Context;)I
    .locals 0

    .line 138
    const-class p0, Landroid/telephony/SubscriptionManager;

    .line 139
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 140
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method private getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 144
    const-class p0, Landroid/telephony/TelephonyManager;

    .line 145
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 146
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private restartPhoneStateListener(Landroid/content/Context;I)V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->stopPhoneStateListener()V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mIsListeningConnectionChange:Z

    .line 185
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 p2, 0x1000

    invoke-virtual {p1, p0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private stopPhoneStateListener()V
    .locals 2

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mIsListeningConnectionChange:Z

    .line 176
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    .line 108
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->ID:I

    int-to-long v1, v1

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    const/16 v1, 0x17c

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_cellular_data_condition_turn_on:I

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setActionText(Ljava/lang/CharSequence;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->condition_cellular_title:I

    .line 116
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->condition_cellular_title:I

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->condition_cellular_summary:I

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_cellular_off:I

    .line 119
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    .line 122
    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 124
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 79
    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public isDisplayable()Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public onActionClick()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    .line 197
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    .line 199
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 200
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 1

    .line 96
    new-instance p0, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mSubId:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->restartPhoneStateListener(Landroid/content/Context;I)V

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->stopPhoneStateListener()V

    return-void
.end method
