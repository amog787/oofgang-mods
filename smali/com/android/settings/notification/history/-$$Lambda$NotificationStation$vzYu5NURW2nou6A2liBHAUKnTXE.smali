.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;

    invoke-direct {v0}, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;-><init>()V

    sput-object v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;->INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    check-cast p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    invoke-static {p1, p2}, Lcom/android/settings/notification/history/NotificationStation;->lambda$new$0(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)I

    move-result p0

    return p0
.end method
