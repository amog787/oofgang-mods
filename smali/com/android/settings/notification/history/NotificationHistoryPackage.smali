.class public Lcom/android/settings/notification/history/NotificationHistoryPackage;
.super Ljava/lang/Object;
.source "NotificationHistoryPackage.java"


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field notifications:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation
.end field

.field pkgName:Ljava/lang/String;

.field uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    .line 39
    new-instance p1, Ljava/util/TreeSet;

    sget-object p2, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;->INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$F3gJkMhaAe1Ef2cbTLXLXekm5Rk;

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 53
    const-class v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    check-cast p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    .line 55
    iget v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    iget v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    .line 56
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    iget-object v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    .line 57
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    .line 58
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getMostRecent()J
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
