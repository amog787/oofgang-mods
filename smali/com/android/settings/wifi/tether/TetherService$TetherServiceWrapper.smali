.class public Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;
.super Ljava/lang/Object;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TetherServiceWrapper"
.end annotation


# instance fields
.field private final mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "usagestats"

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-void
.end method


# virtual methods
.method getActiveDataSubscriptionId()I
    .locals 0

    .line 383
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method setAppInactive(Ljava/lang/String;Z)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/UsageStatsManager;->setAppInactive(Ljava/lang/String;Z)V

    return-void
.end method
