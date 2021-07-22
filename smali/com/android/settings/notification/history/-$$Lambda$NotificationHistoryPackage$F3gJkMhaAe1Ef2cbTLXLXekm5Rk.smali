.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;

    invoke-direct {v0}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;-><init>()V

    sput-object v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;->INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;

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

    check-cast p1, Landroid/app/NotificationHistory$HistoricalNotification;

    check-cast p2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-static {p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryPackage;->lambda$new$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I

    move-result p0

    return p0
.end method
