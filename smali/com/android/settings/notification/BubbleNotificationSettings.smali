.class public Lcom/android/settings/notification/BubbleNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BubbleNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->bubble_notification_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/BubbleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BubbleNotiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 44
    sget p0, Lcom/android/settings/R$xml;->bubble_notification_settings:I

    return p0
.end method
