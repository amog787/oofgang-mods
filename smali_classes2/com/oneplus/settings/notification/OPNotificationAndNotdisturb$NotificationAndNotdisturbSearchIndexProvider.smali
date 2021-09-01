.class Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPNotificationAndNotdisturb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationAndNotdisturbSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;->mIsPrimary:Z

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ring_settings"

    .line 104
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "do_not_disturb_settings"

    .line 107
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "vibration_settings"

    .line 109
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-boolean p0, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;->mIsPrimary:Z

    if-nez p0, :cond_0

    return-object p2

    .line 92
    :cond_0
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 93
    sget p1, Lcom/android/settings/R$xml;->op_notification_not_disturb:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 94
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
